# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "D:/brembsFPGA/flySimulator.runs/synth_1/flySimulator.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

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
OPTRACE "synth_1" START { ROLLUP_AUTO }
set_param chipscope.maxJobs 6
set_param xicom.use_bs_reader 1
set_msg_config  -id {Project 1-153}  -string {{WARNING: [Project 1-153] The current project device 'xc7a100tcsg324-1' does not match with the device on the 'DIGILENTINC.COM:NEXYS_VIDEO:PART0:1.2' board part. A device change to match the device on 'DIGILENTINC.COM:NEXYS_VIDEO:PART0:1.2' board part is being done. Please upgrade the IP in the project via the upgrade_ip command or by selecting Reports => Reports IP Status.}}  -suppress 
set_msg_config  -id {Common 17-163}  -string {{ERROR: [Common 17-163] Missing value for option 'objects', please type 'upgrade_ip -help' for usage info.}}  -suppress 
set_msg_config  -id {Place 30-575}  -string {{ERROR: [Place 30-575] Sub-optimal placement for a clock-capable IO pin and MMCM pair. If this sub optimal condition is acceptable for this design, you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged. These examples can be used directly in the .xdc file to override this clock rule.
	< set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets pll0/inst/clk_in1_clk_wiz_0] >

	pll0/inst/clkin1_ibufg (IBUF.O) is locked to IOB_X1Y124
	 pll0/inst/mmcm_adv_inst (MMCME2_ADV.CLKIN1) is provisionally placed by clockplacer on MMCME2_ADV_X1Y3

	The above error could possibly be related to other connected instances. Following is a list of 
	all the related clock rules and their respective instances.

	Clock Rule: rule_mmcm_bufg
	Status: PASS 
	Rule Description: An MMCM driving a BUFG must be placed on the same half side (top/bottom) of the device
	 pll0/inst/mmcm_adv_inst (MMCME2_ADV.CLKFBOUT) is provisionally placed by clockplacer on MMCME2_ADV_X1Y3
	 and pll0/inst/clkf_buf (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y31

Resolution: A dedicated routing path between the two can be used if: (a) The clock-capable IO (CCIO) is placed on a CCIO capable site (b) The MMCM is placed in the same clock region as the CCIO pin. If the IOB is driving multiple MMCMs, all MMCMs must be placed in the same clock region, one clock region above or one clock region below the IOB. Both the above conditions must be met at the same time, else it may lead to longer and less predictable clock insertion delays.}}  -suppress 
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7a200tsbg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/brembsFPGA/flySimulator.cache/wt [current_project]
set_property parent.project_path D:/brembsFPGA/flySimulator.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths d:/vivado-library-master [current_project]
update_ip_catalog
set_property ip_output_repo d:/brembsFPGA/flySimulator.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
add_files D:/brembsFPGA/modified_mem_t_new.coe
add_files D:/brembsFPGA/memPattern.coe
read_vhdl -library xil_defaultlib {
  D:/brembsFPGA/flySimulator.srcs/sources_1/new/clockDivider.vhd
  D:/brembsFPGA/flySimulator.srcs/sources_1/new/pwm.vhd
  D:/brembsFPGA/flySimulator.srcs/sources_1/new/rxByteUart.vhd
  D:/brembsFPGA/flySimulator.srcs/sources_1/new/rxTxUart.vhd
  D:/brembsFPGA/flySimulator.srcs/sources_1/new/vga_800.vhd
  D:/brembsFPGA/flySimulator.srcs/sources_1/new/flySimulator.vhd
}
read_ip -quiet D:/brembsFPGA/flySimulator.srcs/sources_1/ip/xadc_wiz_0/xadc_wiz_0.xci
set_property used_in_implementation false [get_files -all d:/brembsFPGA/flySimulator.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/brembsFPGA/flySimulator.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0.xdc]

read_ip -quiet D:/brembsFPGA/flySimulator.srcs/sources_1/ip/rgb2dvi_0/rgb2dvi_0.xci
set_property used_in_implementation false [get_files -all d:/brembsFPGA/flySimulator.gen/sources_1/ip/rgb2dvi_0/src/rgb2dvi.xdc]
set_property used_in_implementation false [get_files -all d:/brembsFPGA/flySimulator.gen/sources_1/ip/rgb2dvi_0/src/rgb2dvi_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/brembsFPGA/flySimulator.gen/sources_1/ip/rgb2dvi_0/src/rgb2dvi_clocks.xdc]

read_ip -quiet D:/brembsFPGA/flySimulator.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all d:/brembsFPGA/flySimulator.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/brembsFPGA/flySimulator.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all d:/brembsFPGA/flySimulator.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]

read_ip -quiet D:/brembsFPGA/flySimulator.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.xci
set_property used_in_implementation false [get_files -all d:/brembsFPGA/flySimulator.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/brembsFPGA/flySimulator.srcs/constrs_1/new/master.xdc
set_property used_in_implementation false [get_files D:/brembsFPGA/flySimulator.srcs/constrs_1/new/master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top flySimulator -part xc7a200tsbg484-1
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef flySimulator.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file flySimulator_utilization_synth.rpt -pb flySimulator_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
