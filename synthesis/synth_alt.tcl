#### Template Script for RTL->Gate-Level Flow (generated from RC GENUS15.22 - 15.20-s024_1)

##############################################################################
## Preset global variables and attributes
##############################################################################


set DESIGN riscv_steel_core
set SYN_EFF medium
set MAP_EFF high
set DATE [clock format [clock seconds] -format "%b%d-%T"]
set _OUTPUTS_PATH outputs_${DATE}
set _REPORTS_PATH reports_${DATE}
set _LOG_PATH logs_${DATE}
##set ET_WORKDIR <ET work directory>
set_db / .init_lib_search_path {. ./lib /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS5ST /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE }
set_db / .script_search_path {. ../}
set_db / .init_hdl_search_path {../ ../../tb ../../system}
##Uncomment and specify machine names to enable super-threading.
##set_db / .super_thread_servers {<machine names>}
##For design size of 1.5M - 5M gates, use 8 to 16 CPUs. For designs > 5M gates, use 16 to 32 CPUs
##set_db / .max_cpus_per_server 8

##Default undriven/unconnected setting is 'none'.
##set_db / .hdl_unconnected_input_port_value 0 | 1 | x | none
##set_db / .hdl_undriven_output_port_value   0 | 1 | x | none
##set_db / .hdl_undriven_signal_value        0 | 1 | x | none


##set_db / .wireload_mode <value>
set_db / .information_level 7
##set_db / .retime_reg_naming_suffix __retimed_reg

###############################################################
## Library setup
###############################################################


set_db / .library { D_CELLS_MOSST_typ_1_80V_25C.lib IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C.lib }
set_db / .lef_library { xc018m6_FE.lef D_CELLS.lef IO_CELLS_5V.lef }
set_db / .cap_table_file /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/xc018m6_typ.capTbl

set_db / .lp_insert_clock_gating true

##set_db / .timing_report_unconstrained true

## Power root attributes
#set_db / .lp_clock_gating_prefix <string>
#set_db / .lp_power_analysis_effort <high>
#set_db / .lp_power_unit mW
#set_db / .lp_toggle_rate_unit /ns
## The attribute has been set to default value "medium"
## you can try setting it to high to explore MVT QoR for low power optimization
set_db / .leakage_power_effort medium


####################################################################
## Load Design
####################################################################

read_hdl -verilog ../rtl/riscv_steel_core.v
elaborate $DESIGN

puts "Runtime & Memory after 'read_hdl'"
time_info Elaboration

####################################################################
## Constraints Setup
####################################################################

read_sdc ./constraint/riscv_steel_core.sdc
puts "The number of exceptions is [llength [vfind "design:$DESIGN" -exception *]]"

check_design -unresolved

synthesize -to_generic -eff high
synthesize -to_mapped -eff high  -no_incr

report area   > report/${DESIGN}_area.rep
report timing > report/${DESIGN}_timing.rep
report gates  > report/${DESIGN}_gates.rep
report power  > report/${DESIGN}_power.rep

write_design -innovus -base_name innovus/$DESIGN


