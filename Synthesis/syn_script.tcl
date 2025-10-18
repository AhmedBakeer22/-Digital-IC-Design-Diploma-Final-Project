
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys
lappend search_path /home/IC/Projects/System/RTL

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

analyze -format verilog SYS_TOP.v
analyze -format verilog ALU.v
analyze -format verilog ASYNC_FIFO.v
analyze -format verilog CLK_GATE.v
analyze -format verilog CLKDIV_MUX.v
analyze -format verilog Clock_Divider.v
analyze -format verilog data_sampling.v
analyze -format verilog DATA_SYNC.v
analyze -format verilog deserializer.v
analyze -format verilog DF_SYNC.v
analyze -format verilog edge_bit_counter.v
analyze -format verilog FIFO_MEM_CNTRL.v
analyze -format verilog FIFO_RD.v
analyze -format verilog FIFO_WR.v
analyze -format sverilog FSM.sv
analyze -format verilog MUX.v
analyze -format verilog parity_calc.v
analyze -format verilog parity_check.v
analyze -format verilog PULSE_GEN.v
analyze -format verilog Register_File.v
analyze -format verilog RST_SYNC.v
analyze -format verilog serializer.v
analyze -format verilog start_check.v
analyze -format verilog stop_check.v
analyze -format sverilog SYS_CTRL.sv
analyze -format verilog UART.v
analyze -format verilog UART_RX.v
analyze -format sverilog UART_RX_FSM.sv
analyze -format verilog UART_TX.v

elaborate -lib work SYS_TOP


###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile 

##################### Close Formality Setup file ###########################

set_svf -off

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

####################### reporting ##########################################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type min > reports/hold.rpt
report_timing -delay_type max > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints.rpt

################# starting graphical user interface #######################

#gui_start

#exit
