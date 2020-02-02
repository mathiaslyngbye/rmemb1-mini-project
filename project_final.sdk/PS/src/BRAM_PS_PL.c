
#include "bram.h"
#include "platform.h"
#include "stdio.h"
#include "xadcps.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xstatus.h"


/****************************** Device IDs **********************************/
#define XADC_DEVICE_ID 		XPAR_XADCPS_0_DEVICE_ID

/************************** Function Prototypes *****************************/

static int XAdcPolledPrintfExample(u16 XAdcDeviceId, int offset, float* value);
static int XAdcFractionToInt(float FloatNum);

/***************** Macros (Inline Functions) Definitions ********************/

//Small foot-print printf function
#define printf xil_printf

// converting RAW data from external source to voltage
#define XAdcPs_ExternalRawToVoltage(AdcData)\
								((((float)(AdcData))* (1.0f))/65536.0f)

/************************** Variable Definitions ****************************/
static XAdcPs XAdcInst;      /* XADC driver instance */
static int addr_value = 1;
static float charge_rate_standard = 0.1;
static float charge_rate_rapid = 0.5;
static int pwm_memory_size = 4096; // i.e. 12 bits
static float supply_voltage = 12.0; // i.e. 6 volts
static float difference_resistor = 1; // 1 Ohm
static float battery_voltage_difference = (1.5-1.2)/1.2; // constant; check datasheet

/********************************** Main ************************************/

int main()
{
	// Initiation
	printf("\033[H\033[J");	// Clear terminal
	xil_printf("Initializing platform...\r\n");
	init_platform();
	xil_printf("Done.\r\n");
	initMemory();
	xil_printf("\r\nWelcome to Smart Battery Charging System!\r\n\n");


	int battery_capacity = 0;
	float battery_nominal_voltage = 0.0;
	float charge_current = 0.0;
	char secure_prompt;
	while(1)
	{
		xil_printf("Enter battery capacity (Ah): ");
		scanf("%d", &battery_capacity);
		xil_printf("%d\r\n", battery_capacity);
		xil_printf("Enter battery nominal voltage (V): ");
		scanf("%f", &battery_nominal_voltage);
		xil_printf("%0d.%03d\r\n", (int)(battery_nominal_voltage), XAdcFractionToInt(battery_nominal_voltage));

		if (battery_capacity && battery_nominal_voltage)
		{
			charge_current = charge_rate_standard*battery_capacity; // i.e. 0.1CmA;
			break;
		}
		else
		{
			xil_printf("Invalid input... Try again.\r\n");
		}
		// PUT IN LIMITS???
	}

	// Security prompt
	xil_printf("\r\nParameters saved. Start charging? [y/N]");
	scanf(" %c", &secure_prompt);
	if(secure_prompt != 'y')
	{
		xil_printf("Aborting...\r\n");
		return 0;
	}
	printf("\r\n\n");

	// Charge loop
	xil_printf("Charge Status:\r\n");

	float xadc1_value;
	float xadc9_value;
	float voltage_out;
	float current_out;
	float pwm_percentage = 0;
	int pwm_memory_out = (pwm_percentage/100)*(pwm_memory_size-1);
	MYMEM_u(addr_value)=pwm_memory_out;

	while(1)
	{
		// Fetch (and print) XADC values
		XAdcPolledPrintfExample(XADC_DEVICE_ID, 1, &xadc1_value);
		XAdcPolledPrintfExample(XADC_DEVICE_ID, 9, &xadc9_value);

		// Print supply voltage
		voltage_out = supply_voltage*pwm_percentage*0.01;
		xil_printf("Charge voltage (V): %0d.%03d ",		(int)(voltage_out), 	XAdcFractionToInt(voltage_out));
		xil_printf("(Supply %0d.%03d @ ", 				(int)(supply_voltage), 	XAdcFractionToInt(supply_voltage));
		xil_printf("%0d.%03d%% duty cycle)\r\n", 		(int)(pwm_percentage), 	XAdcFractionToInt(pwm_percentage));

		// Print supply current
		current_out = (xadc1_value-xadc9_value)/difference_resistor;
		xil_printf("Charge current (A): %0d.%03d ",		(int)(current_out), 	XAdcFractionToInt(current_out));
		xil_printf("(Goal %0d.%03d)\r\n\n",				(int)(charge_current), 	XAdcFractionToInt(charge_current));

		// Print progress
		float charge_percent = (xadc9_value-battery_nominal_voltage)/(battery_voltage_difference*battery_nominal_voltage);
		xil_printf("Charge percent: %0d.%03d%%\r\n",	(int)(charge_percent*100), 	XAdcFractionToInt(charge_percent*100));

		// Calculate and export PWM
		if(current_out < charge_current && pwm_percentage < 50.0)
			pwm_percentage += 0.01;
		else if (current_out > charge_current && pwm_percentage > 0.0)
			pwm_percentage -= 0.01;

		pwm_memory_out = (pwm_percentage/100)*(pwm_memory_size-1);
		MYMEM_u(addr_value)=pwm_memory_out;

		// Go up in terminal to overwrite
		printf("\033[6A");
	}

	return XST_SUCCESS;
	cleanup_platform();
	return 0;
}

int XAdcPolledPrintfExample(u16 XAdcDeviceId, int offset, float* value)
{
	int Status;
	XAdcPs_Config *ConfigPtr;
	u32 VccPdroRawData;
	float VccPintData;
	XAdcPs *XAdcInstPtr = &XAdcInst;

	//printf("\r\nEntering the XAdc Polled Example. \r\n");

	/*
	 * Initialize the XAdc driver.
	 */
	ConfigPtr = XAdcPs_LookupConfig(XAdcDeviceId);
	if (ConfigPtr == NULL) {
		return XST_FAILURE;
	}
	XAdcPs_CfgInitialize(XAdcInstPtr, ConfigPtr,
				ConfigPtr->BaseAddress);

	/*
	 * Self Test the XADC/ADC device
	 */
	Status = XAdcPs_SelfTest(XAdcInstPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	/*
	 * Read the AD14 input Voltage Data from the
	 * ADC data registers.
	 */
	VccPdroRawData = XAdcPs_GetAdcData(XAdcInstPtr, XADCPS_CH_AUX_MIN+offset);
	VccPintData = XAdcPs_ExternalRawToVoltage(VccPdroRawData)*3.3;
	printf("The Voltage on Channel %d is %0d.%03d Volts.   \r\n",
			offset, (int)(VccPintData), XAdcFractionToInt(VccPintData));

	//printf("\r\nExiting the XAdc Polled Example. \r\n");

	(*value) = VccPintData;

	return XST_SUCCESS;
}

int XAdcFractionToInt(float FloatNum)
{
	float Temp;

	Temp = FloatNum;
	if (FloatNum < 0) {
		Temp = -(FloatNum);
	}

	return( ((int)((Temp -(float)((int)Temp)) * (1000.0f))));
}
