# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/mal/Workspace/Vivado/project_final/project_final.cache/wt [current_project]
set_property parent.project_path /home/mal/Workspace/Vivado/project_final/project_final.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part tul.com.tw:pynq-z2:part0:1.0 [current_project]
set_property ip_output_repo /home/mal/Workspace/Vivado/project_final/project_final.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/hdl/design_ps_pl_wrapper.vhd
add_files /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/design_ps_pl.bd
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_bram_ctrl_0_0/design_ps_pl_axi_bram_ctrl_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_1/bd_de28_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_1/bd_de28_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_2/bd_de28_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_3/bd_de28_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_4/bd_de28_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_5/bd_de28_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_6/bd_de28_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_10/bd_de28_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_11/bd_de28_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_12/bd_de28_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_13/bd_de28_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_14/bd_de28_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_15/bd_de28_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_16/bd_de28_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_17/bd_de28_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_18/bd_de28_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_19/bd_de28_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_20/bd_de28_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_21/bd_de28_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_23/bd_de28_m01s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_24/bd_de28_m01arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_25/bd_de28_m01rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_26/bd_de28_m01awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_27/bd_de28_m01wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_axi_smc_0/bd_0/ip/ip_28/bd_de28_m01bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_processing_system7_0_0/design_ps_pl_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_blk_mem_gen_0_0/design_ps_pl_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_rst_ps7_0_100M_0/design_ps_pl_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_rst_ps7_0_100M_0/design_ps_pl_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_rst_ps7_0_100M_0/design_ps_pl_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_xadc_wiz_0_0/design_ps_pl_xadc_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_xadc_wiz_0_0/design_ps_pl_xadc_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/design_ps_pl_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/mal/Workspace/Vivado/project_final/project_final.srcs/constrs_1/new/const.xdc
set_property used_in_implementation false [get_files /home/mal/Workspace/Vivado/project_final/project_final.srcs/constrs_1/new/const.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top design_ps_pl_wrapper -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_ps_pl_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_ps_pl_wrapper_utilization_synth.rpt -pb design_ps_pl_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
