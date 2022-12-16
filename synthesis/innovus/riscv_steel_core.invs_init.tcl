#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 12/15/2022 12:26:49
#
#####################################################################


read_mmmc innovus/riscv_steel_core.mmmc.tcl

read_physical -lef {/pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/xc018m6_FE.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/D_CELLS.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/IO_CELLS_5V.lef}

read_netlist innovus/riscv_steel_core.v

init_design
