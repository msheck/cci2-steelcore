#####################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 12/15/2022 12:26:49
#
# This file can only be run in Innovus Common UI mode.
#
#####################################################################


# User Specified CPU usage for Innovus
######################################
set_multi_cpu_usage -local_cpu 8


# Design Import
###########################################################
## Reading FlowKit settings file
source innovus/riscv_steel_core.flowkit_settings.tcl

source innovus/riscv_steel_core.invs_init.tcl

# Reading metrics file
######################
read_metric -id current innovus/riscv_steel_core.metrics.json 



# Mode Setup
###########################################################
source innovus/riscv_steel_core.mode

# Import list of instances with subdesigns having boundary optimization disabled
################################################################################
set_db opt_keep_ports innovus/riscv_steel_core.boundary_opto.tcl 

