
#include "bram.h"
#include "platform.h"
#include "stdio.h"
#include "xadcps.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xstatus.h"


/****************************** Device IDs **********************************/
#define XADC_DEVICE_ID 		XPAR_XADCPS_0_DEVICE_ID

/**************************** Other defines *********************************/
#define WINDOW_SIZE 100

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
static int addr_value_pwm = 1;
static int addr_value_led = 2;
static float charge_rate_standard = 0.1;
//static float charge_rate_rapid = 0.5;
static int pwm_memory_size = 16384; // i.e. 12 bits
static float supply_voltage = 6.0; // i.e. 6 volts
static float difference_resistor = 1; // 1 Ohm
static float voltage_divider_ratio = 1.0/(1.0-(10000.0/15100.0));

/********************************** Main ************************************/

int main()
{
    // Initiation
    printf("\033[H\033[J");	// Clear terminal
    xil_printf("Initializing platform...\r\n");
    init_platform();
    xil_printf("Done.\r\n");
    initMemory();
    MYMEM_u(addr_value_led)=0;
    MYMEM_u(addr_value_pwm)=0;

    xil_printf("\r\nWelcome to Smart Battery Charging System!\r\n\n");

    // Prompt variables
    float battery_capacity = 0.0;
    float battery_nominal_voltage = 0.0;
    float charge_current = 0.0;
    char secure_prompt;

    // User input prompt
    while(1)
    {
        xil_printf("Enter battery capacity (Ah): ");
        scanf("%f", &battery_capacity);
        xil_printf("%0d.%03d\r\n", (int)(battery_capacity), XAdcFractionToInt(battery_capacity));
        xil_printf("Enter battery nominal voltage (V): ");
        scanf("%f", &battery_nominal_voltage);
        xil_printf("%0d.%03d\r\n", (int)(battery_nominal_voltage), XAdcFractionToInt(battery_nominal_voltage));

        if (battery_capacity && battery_nominal_voltage)
        {
            charge_current = charge_rate_standard*battery_capacity; // i.e. 0.1CmA;
            break;
        }
        else
            xil_printf("Invalid input... Try again.\r\n");
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

    // Average related variables
    int xadc_avg_index = 0;
    float xadc1_avg_data[WINDOW_SIZE] = {0.0};
    float xadc9_avg_data[WINDOW_SIZE] = {0.0};
    float xadc1_avg_sum = 0.0;
    float xadc9_avg_sum = 0.0;
    float xadc1_avg = 0.0;
    float xadc9_avg = 0.0;
    float xadc1_value, xadc9_value;
    float charge_avg_data[WINDOW_SIZE] = {0.0};
    float charge_avg_sum = 0.0;
    float charge_avg = 0.0;
    int charge_avg_index = 0;
    float charge_percent_avg = 0.0;

    // Reset pwm and memory
    float pwm_percentage = 0;
    int pwm_memory_out = (pwm_percentage/100)*(pwm_memory_size-1);
    MYMEM_u(addr_value_pwm)=pwm_memory_out;

    // Begin charging loop
    int charging = 1;
    while(charging)
    {
        // Read XADC values
        float xadc1_read, xadc9_read;
        XAdcPolledPrintfExample(XADC_DEVICE_ID, 1, &xadc1_read);
        XAdcPolledPrintfExample(XADC_DEVICE_ID, 9, &xadc9_read);

        // Average XADC channel 1 values
        xadc1_avg_sum -= xadc1_avg_data[xadc_avg_index];
        xadc1_avg_sum += xadc1_read;
        xadc1_avg_data[xadc_avg_index] = xadc1_read;
        xadc1_avg = xadc1_avg_sum/WINDOW_SIZE;
        xadc1_value = xadc1_avg;

        // Average XADC channel 9 values
        xadc9_avg_sum -= xadc9_avg_data[xadc_avg_index];
        xadc9_avg_sum += xadc9_read;
        xadc9_avg_data[xadc_avg_index] = xadc9_read;
        xadc9_avg = xadc9_avg_sum/WINDOW_SIZE;
        xadc9_value = xadc9_avg;

        // Increment circle average index
        xadc_avg_index = (xadc_avg_index+1)%WINDOW_SIZE;

        // Print average XADC values
        printf("The Voltage on Channel 1 is %0d.%03d Volts.  \r\n", (int)(xadc1_value), XAdcFractionToInt(xadc1_value));
        printf("The Voltage on Channel 9 is %0d.%03d Volts.   \r\n", (int)(xadc9_value), XAdcFractionToInt(xadc9_value));

        // Print supply voltage
        xil_printf("Charge voltage (V): Supply %0d.%03d @ %0d.%03d duty cycle.   \r\n", (int)(supply_voltage), 	XAdcFractionToInt(supply_voltage), (int)(pwm_percentage), XAdcFractionToInt(pwm_percentage));

        // Print supply current
        float current_out = (xadc1_value-xadc9_value)/difference_resistor;
        xil_printf("Charge current (A): %0d.%03d (Goal %0d.%03d)\r\n\n", (int)(current_out), XAdcFractionToInt(current_out), (int)(charge_current),	XAdcFractionToInt(charge_current));

        // Estimate charge progress
        float charge_percent = 0;
        if(xadc9_value < battery_nominal_voltage)
            charge_percent = 0;
        else if(xadc9_value<(1.35/1.2)*battery_nominal_voltage)
            charge_percent = ((xadc9_value-battery_nominal_voltage)*(20.0-0.0))/(((1.35-1.2)/1.2)*battery_nominal_voltage);
        else
            charge_percent = ((xadc9_value-(1.3125/1.2)*battery_nominal_voltage)*(100.0-0.0))/(((1.5/1.2)*battery_nominal_voltage)-((1.3125/1.2)*battery_nominal_voltage));

        // Average charge percentage
        charge_avg_sum -= charge_avg_data[charge_avg_index];
        charge_avg_sum += charge_percent;
        charge_avg_data[charge_avg_index] = charge_percent;
        charge_avg = charge_avg_sum/WINDOW_SIZE;
        charge_percent_avg = charge_avg;
        charge_avg_index = (charge_avg_index+1)%WINDOW_SIZE;

        //float charge_percent = (xadc9_value-battery_nominal_voltage)/(battery_voltage_difference*battery_nominal_voltage);
        xil_printf("Charge percent: %0d%%     \r\n", (int)(charge_percent_avg));

        // Regulate and export PWM
        if(current_out < charge_current && pwm_percentage < 100.0)
            pwm_percentage += 0.01;
        else if (current_out > charge_current && pwm_percentage > 0.0)
            pwm_percentage -= 0.01;

        pwm_memory_out = (pwm_percentage/100)*(pwm_memory_size-1);
        MYMEM_u(addr_value_pwm)=pwm_memory_out;

        // Go up in terminal to overwrite
        printf("\033[6A");

        // Out charge to leds
        int charge_percent_led = 0;
        if (charge_percent_avg >= 25.0)
            charge_percent_led += 1;
        if (charge_percent_avg >= 50.0)
            charge_percent_led += 2;
        if (charge_percent_avg >= 75.0)
            charge_percent_led += 4;
        if (charge_percent_avg >= 100.0)
        {
            charge_percent_led += 8;
            charging = 0;
        }
        MYMEM_u(addr_value_led)=charge_percent_led;
    }

    printf("Charge complete!");

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

    ConfigPtr = XAdcPs_LookupConfig(XAdcDeviceId);
    if (ConfigPtr == NULL) {
        return XST_FAILURE;
    }
    XAdcPs_CfgInitialize(XAdcInstPtr, ConfigPtr,
            ConfigPtr->BaseAddress);

    Status = XAdcPs_SelfTest(XAdcInstPtr);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    VccPdroRawData = XAdcPs_GetAdcData(XAdcInstPtr, XADCPS_CH_AUX_MIN+offset);
    VccPintData = XAdcPs_ExternalRawToVoltage(VccPdroRawData);
    (*value) = VccPintData*3.3*voltage_divider_ratio;

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
