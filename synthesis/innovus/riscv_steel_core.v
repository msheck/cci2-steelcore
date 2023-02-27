/*
module iopads(real_time, instruction_in, boot_address, reset, clock, interrupt_request_software, interrupt_request_timer, interrupt_request_external, instruction_address, data_out, data_rw_address, data_write_mask, real_time_I, instruction_in_I, boot_address_I, reset_I, clock_I, interrupt_request_software_I, interrupt_request_timer_I, interrupt_request_external_I, instruction_address_O, data_out_O, data_rw_address_O, data_write_mask_O);

	
	input real_time [58:0];
	input instruction_in [31:0];
	input boot_address [31:0];
	input reset;
	input clock;
	input interrupt_request_software;
	input interrupt_request_timer;
	input interrupt_request_external;
	output instruction_address [31:0];
	output data_out [31:0];
	output data_rw_address [31:0];
	output data_write_mask [3:0];

	output real_time_I [58:0];
	output instruction_in_I [31:0];
	output boot_address_I [31:0];
	output reset_I;
	output clock_I;
	output interrupt_request_software_I;
	output interrupt_request_timer_I;
	output interrupt_request_external;
	input instruction_address_O [31:0];
	input data_out_O [31:0];
	input data_rw_address_O [31:0];
	input data_write_mask_O [3:0];
	

	VDDIPADP PAD_vdd_E();
	GNDOPADP PAD_vss_S();
	
	ICP PAD_real_time_i_0(.PAD(real_time[0]), .Y(real_time_I[0]));
	ICP PAD_real_time_i_1(.PAD(real_time[1]), .Y(real_time_I[1]));
	ICP PAD_real_time_i_2(.PAD(real_time[2]), .Y(real_time_I[2]));
	ICP PAD_real_time_i_3(.PAD(real_time[3]), .Y(real_time_I[3]));
	ICP PAD_real_time_i_4(.PAD(real_time[4]), .Y(real_time_I[4]));
	ICP PAD_real_time_i_5(.PAD(real_time[5]), .Y(real_time_I[5]));
	ICP PAD_real_time_i_6(.PAD(real_time[6]), .Y(real_time_I[6]));
	ICP PAD_real_time_i_7(.PAD(real_time[7]), .Y(real_time_I[7]));
	ICP PAD_real_time_i_8(.PAD(real_time[8]), .Y(real_time_I[8]));
	ICP PAD_real_time_i_9(.PAD(real_time[9]), .Y(real_time_I[9]));
	ICP PAD_real_time_i_10(.PAD(real_time[10]), .Y(real_time_I[10]));
	ICP PAD_real_time_i_11(.PAD(real_time[11]), .Y(real_time_I[11]));
	ICP PAD_real_time_i_12(.PAD(real_time[12]), .Y(real_time_I[12]));
	ICP PAD_real_time_i_13(.PAD(real_time[13]), .Y(real_time_I[13]));
	ICP PAD_real_time_i_14(.PAD(real_time[14]), .Y(real_time_I[14]));
	ICP PAD_real_time_i_15(.PAD(real_time[15]), .Y(real_time_I[15]));
	ICP PAD_real_time_i_16(.PAD(real_time[16]), .Y(real_time_I[16]));
	ICP PAD_real_time_i_17(.PAD(real_time[17]), .Y(real_time_I[17]));
	ICP PAD_real_time_i_18(.PAD(real_time[18]), .Y(real_time_I[18]));
	ICP PAD_real_time_i_19(.PAD(real_time[19]), .Y(real_time_I[19]));
	ICP PAD_real_time_i_20(.PAD(real_time[20]), .Y(real_time_I[20]));
	ICP PAD_real_time_i_21(.PAD(real_time[21]), .Y(real_time_I[21]));
	ICP PAD_real_time_i_22(.PAD(real_time[22]), .Y(real_time_I[22]));
	ICP PAD_real_time_i_23(.PAD(real_time[23]), .Y(real_time_I[23]));
	ICP PAD_real_time_i_24(.PAD(real_time[24]), .Y(real_time_I[24]));
	ICP PAD_real_time_i_25(.PAD(real_time[25]), .Y(real_time_I[25]));
	ICP PAD_real_time_i_26(.PAD(real_time[26]), .Y(real_time_I[26]));
	ICP PAD_real_time_i_27(.PAD(real_time[27]), .Y(real_time_I[27]));
	ICP PAD_real_time_i_28(.PAD(real_time[28]), .Y(real_time_I[28]));
	ICP PAD_real_time_i_29(.PAD(real_time[29]), .Y(real_time_I[29]));
	ICP PAD_real_time_i_30(.PAD(real_time[30]), .Y(real_time_I[30]));
	ICP PAD_real_time_i_31(.PAD(real_time[31]), .Y(real_time_I[31]));
	ICP PAD_real_time_i_32(.PAD(real_time[32]), .Y(real_time_I[32]));
	ICP PAD_real_time_i_33(.PAD(real_time[33]), .Y(real_time_I[33]));
	ICP PAD_real_time_i_34(.PAD(real_time[34]), .Y(real_time_I[34]));
	ICP PAD_real_time_i_35(.PAD(real_time[35]), .Y(real_time_I[35]));
	ICP PAD_real_time_i_36(.PAD(real_time[36]), .Y(real_time_I[36]));
	ICP PAD_real_time_i_37(.PAD(real_time[37]), .Y(real_time_I[37]));
	ICP PAD_real_time_i_38(.PAD(real_time[38]), .Y(real_time_I[38]));
	ICP PAD_real_time_i_39(.PAD(real_time[39]), .Y(real_time_I[39]));
	ICP PAD_real_time_i_40(.PAD(real_time[40]), .Y(real_time_I[40]));
	ICP PAD_real_time_i_41(.PAD(real_time[41]), .Y(real_time_I[41]));
	ICP PAD_real_time_i_42(.PAD(real_time[42]), .Y(real_time_I[42]));
	ICP PAD_real_time_i_43(.PAD(real_time[43]), .Y(real_time_I[43]));
	ICP PAD_real_time_i_44(.PAD(real_time[44]), .Y(real_time_I[44]));
	ICP PAD_real_time_i_45(.PAD(real_time[45]), .Y(real_time_I[45]));
	ICP PAD_real_time_i_46(.PAD(real_time[46]), .Y(real_time_I[46]));
	ICP PAD_real_time_i_47(.PAD(real_time[47]), .Y(real_time_I[47]));
	ICP PAD_real_time_i_48(.PAD(real_time[48]), .Y(real_time_I[48]));
	ICP PAD_real_time_i_49(.PAD(real_time[49]), .Y(real_time_I[49]));
	ICP PAD_real_time_i_50(.PAD(real_time[50]), .Y(real_time_I[50]));
	ICP PAD_real_time_i_51(.PAD(real_time[51]), .Y(real_time_I[51]));
	ICP PAD_real_time_i_52(.PAD(real_time[52]), .Y(real_time_I[52]));
	ICP PAD_real_time_i_53(.PAD(real_time[53]), .Y(real_time_I[53]));
	ICP PAD_real_time_i_54(.PAD(real_time[54]), .Y(real_time_I[54]));
	ICP PAD_real_time_i_55(.PAD(real_time[55]), .Y(real_time_I[55]));
	ICP PAD_real_time_i_56(.PAD(real_time[56]), .Y(real_time_I[56]));
	ICP PAD_real_time_i_57(.PAD(real_time[57]), .Y(real_time_I[57]));
	ICP PAD_real_time_i_58(.PAD(real_time[58]), .Y(real_time_I[58]));

	ICP PAD_instruction_in_i_0(.PAD(instruction_in[0]), .Y(real_time_I[0]));
	ICP PAD_instruction_in_i_1(.PAD(instruction_in[1]), .Y(real_time_I[1]));
	ICP PAD_instruction_in_i_2(.PAD(instruction_in[2]), .Y(real_time_I[2]));
	ICP PAD_instruction_in_i_3(.PAD(instruction_in[3]), .Y(real_time_I[3]));
	ICP PAD_instruction_in_i_4(.PAD(instruction_in[4]), .Y(real_time_I[4]));
	ICP PAD_instruction_in_i_5(.PAD(instruction_in[5]), .Y(real_time_I[5]));
	ICP PAD_instruction_in_i_6(.PAD(instruction_in[6]), .Y(real_time_I[6]));
	ICP PAD_instruction_in_i_7(.PAD(instruction_in[7]), .Y(real_time_I[7]));
	ICP PAD_instruction_in_i_8(.PAD(instruction_in[8]), .Y(real_time_I[8]));
	ICP PAD_instruction_in_i_9(.PAD(instruction_in[9]), .Y(real_time_I[9]));
	ICP PAD_instruction_in_i_10(.PAD(instruction_in[10]), .Y(real_time_I[10]));
	ICP PAD_instruction_in_i_11(.PAD(instruction_in[11]), .Y(real_time_I[11]));
	ICP PAD_instruction_in_i_12(.PAD(instruction_in[12]), .Y(real_time_I[12]));
	ICP PAD_instruction_in_i_13(.PAD(instruction_in[13]), .Y(real_time_I[13]));
	ICP PAD_instruction_in_i_14(.PAD(instruction_in[14]), .Y(real_time_I[14]));
	ICP PAD_instruction_in_i_15(.PAD(instruction_in[15]), .Y(real_time_I[15]));
	ICP PAD_instruction_in_i_16(.PAD(instruction_in[16]), .Y(real_time_I[16]));
	ICP PAD_instruction_in_i_17(.PAD(instruction_in[17]), .Y(real_time_I[17]));
	ICP PAD_instruction_in_i_18(.PAD(instruction_in[18]), .Y(real_time_I[18]));
	ICP PAD_instruction_in_i_19(.PAD(instruction_in[19]), .Y(real_time_I[19]));
	ICP PAD_instruction_in_i_20(.PAD(instruction_in[20]), .Y(real_time_I[20]));
	ICP PAD_instruction_in_i_21(.PAD(instruction_in[21]), .Y(real_time_I[21]));
	ICP PAD_instruction_in_i_22(.PAD(instruction_in[22]), .Y(real_time_I[22]));
	ICP PAD_instruction_in_i_23(.PAD(instruction_in[23]), .Y(real_time_I[23]));
	ICP PAD_instruction_in_i_24(.PAD(instruction_in[24]), .Y(real_time_I[24]));
	ICP PAD_instruction_in_i_25(.PAD(instruction_in[25]), .Y(real_time_I[25]));
	ICP PAD_instruction_in_i_26(.PAD(instruction_in[26]), .Y(real_time_I[26]));
	ICP PAD_instruction_in_i_27(.PAD(instruction_in[27]), .Y(real_time_I[27]));
	ICP PAD_instruction_in_i_28(.PAD(instruction_in[28]), .Y(real_time_I[28]));
	ICP PAD_instruction_in_i_29(.PAD(instruction_in[29]), .Y(real_time_I[29]));
	ICP PAD_instruction_in_i_30(.PAD(instruction_in[30]), .Y(real_time_I[30]));
	ICP PAD_instruction_in_i_31(.PAD(instruction_in[31]), .Y(real_time_I[31]));

	ICP PAD_instruction_in_i_0(.PAD(instruction_in[0]), .Y(real_time_I[0]));
	ICP PAD_instruction_in_i_1(.PAD(instruction_in[1]), .Y(real_time_I[1]));
	ICP PAD_instruction_in_i_2(.PAD(instruction_in[2]), .Y(real_time_I[2]));
	ICP PAD_instruction_in_i_3(.PAD(instruction_in[3]), .Y(real_time_I[3]));
	ICP PAD_instruction_in_i_4(.PAD(instruction_in[4]), .Y(real_time_I[4]));
	ICP PAD_instruction_in_i_5(.PAD(instruction_in[5]), .Y(real_time_I[5]));
	ICP PAD_instruction_in_i_6(.PAD(instruction_in[6]), .Y(real_time_I[6]));
	ICP PAD_instruction_in_i_7(.PAD(instruction_in[7]), .Y(real_time_I[7]));
	ICP PAD_instruction_in_i_8(.PAD(instruction_in[8]), .Y(real_time_I[8]));
	ICP PAD_instruction_in_i_9(.PAD(instruction_in[9]), .Y(real_time_I[9]));
	ICP PAD_instruction_in_i_10(.PAD(instruction_in[10]), .Y(real_time_I[10]));
	ICP PAD_instruction_in_i_11(.PAD(instruction_in[11]), .Y(real_time_I[11]));
	ICP PAD_instruction_in_i_12(.PAD(instruction_in[12]), .Y(real_time_I[12]));
	ICP PAD_instruction_in_i_13(.PAD(instruction_in[13]), .Y(real_time_I[13]));
	ICP PAD_instruction_in_i_14(.PAD(instruction_in[14]), .Y(real_time_I[14]));
	ICP PAD_instruction_in_i_15(.PAD(instruction_in[15]), .Y(real_time_I[15]));
	ICP PAD_instruction_in_i_16(.PAD(instruction_in[16]), .Y(real_time_I[16]));
	ICP PAD_instruction_in_i_17(.PAD(instruction_in[17]), .Y(real_time_I[17]));
	ICP PAD_instruction_in_i_18(.PAD(instruction_in[18]), .Y(real_time_I[18]));
	ICP PAD_instruction_in_i_19(.PAD(instruction_in[19]), .Y(real_time_I[19]));
	ICP PAD_instruction_in_i_20(.PAD(instruction_in[20]), .Y(real_time_I[20]));
	ICP PAD_instruction_in_i_21(.PAD(instruction_in[21]), .Y(real_time_I[21]));
	ICP PAD_instruction_in_i_22(.PAD(instruction_in[22]), .Y(real_time_I[22]));
	ICP PAD_instruction_in_i_23(.PAD(instruction_in[23]), .Y(real_time_I[23]));
	ICP PAD_instruction_in_i_24(.PAD(instruction_in[24]), .Y(real_time_I[24]));
	ICP PAD_instruction_in_i_25(.PAD(instruction_in[25]), .Y(real_time_I[25]));
	ICP PAD_instruction_in_i_26(.PAD(instruction_in[26]), .Y(real_time_I[26]));
	ICP PAD_instruction_in_i_27(.PAD(instruction_in[27]), .Y(real_time_I[27]));
	ICP PAD_instruction_in_i_28(.PAD(instruction_in[28]), .Y(real_time_I[28]));
	ICP PAD_instruction_in_i_29(.PAD(instruction_in[29]), .Y(real_time_I[29]));
	ICP PAD_instruction_in_i_30(.PAD(instruction_in[30]), .Y(real_time_I[30]));
	ICP PAD_instruction_in_i_31(.PAD(instruction_in[31]), .Y(real_time_I[31]));

	ICP PAD_reset_i(.PAD(reset), .Y(reset_I));
	ICP PAD_clock_i(.PAD(clock), .Y(clock_I));
	ICP PAD_interrupt_request_software_i(.PAD(interrupt_request_software), .Y(interrupt_request_software_I));
	ICP PAD_interrupt_request_timer_i(.PAD(interrupt_request_timer), .Y(interrupt_request_timer_I));
	ICP PAD_interrupt_request_external_i(.PAD(interrupt_request_external), .Y(interrupt_request_external_I));

	BD8P PAD_instruction_address_0_o(.A(instruction_address_O[0]), .PAD(instruction_address[0]));
	BD8P PAD_instruction_address_1_o(.A(instruction_address_O[1]), .PAD(instruction_address[1]));
	BD8P PAD_instruction_address_2_o(.A(instruction_address_O[2]), .PAD(instruction_address[2]));
	BD8P PAD_instruction_address_3_o(.A(instruction_address_O[3]), .PAD(instruction_address[3]));
	BD8P PAD_instruction_address_4_o(.A(instruction_address_O[4]), .PAD(instruction_address[4]));
	BD8P PAD_instruction_address_5_o(.A(instruction_address_O[5]), .PAD(instruction_address[5]));
	BD8P PAD_instruction_address_6_o(.A(instruction_address_O[6]), .PAD(instruction_address[6]));
	BD8P PAD_instruction_address_7_o(.A(instruction_address_O[7]), .PAD(instruction_address[7]));
	BD8P PAD_instruction_address_8_o(.A(instruction_address_O[8]), .PAD(instruction_address[8]));
	BD8P PAD_instruction_address_9_o(.A(instruction_address_O[9]), .PAD(instruction_address[9]));
	BD8P PAD_instruction_address_10_o(.A(instruction_address_O[10]), .PAD(instruction_address[10]));
	BD8P PAD_instruction_address_11_o(.A(instruction_address_O[11]), .PAD(instruction_address[11]));
	BD8P PAD_instruction_address_12_o(.A(instruction_address_O[12]), .PAD(instruction_address[12]));
	BD8P PAD_instruction_address_13_o(.A(instruction_address_O[13]), .PAD(instruction_address[13]));
	BD8P PAD_instruction_address_14_o(.A(instruction_address_O[14]), .PAD(instruction_address[14]));
	BD8P PAD_instruction_address_15_o(.A(instruction_address_O[15]), .PAD(instruction_address[15]));
	BD8P PAD_instruction_address_16_o(.A(instruction_address_O[16]), .PAD(instruction_address[16]));
	BD8P PAD_instruction_address_17_o(.A(instruction_address_O[17]), .PAD(instruction_address[17]));
	BD8P PAD_instruction_address_18_o(.A(instruction_address_O[18]), .PAD(instruction_address[18]));
	BD8P PAD_instruction_address_19_o(.A(instruction_address_O[19]), .PAD(instruction_address[19]));
	BD8P PAD_instruction_address_20_o(.A(instruction_address_O[20]), .PAD(instruction_address[20]));
	BD8P PAD_instruction_address_21_o(.A(instruction_address_O[21]), .PAD(instruction_address[21]));
	BD8P PAD_instruction_address_22_o(.A(instruction_address_O[22]), .PAD(instruction_address[22]));
	BD8P PAD_instruction_address_23_o(.A(instruction_address_O[23]), .PAD(instruction_address[23]));
	BD8P PAD_instruction_address_24_o(.A(instruction_address_O[24]), .PAD(instruction_address[24]));
	BD8P PAD_instruction_address_25_o(.A(instruction_address_O[25]), .PAD(instruction_address[25]));
	BD8P PAD_instruction_address_26_o(.A(instruction_address_O[26]), .PAD(instruction_address[26]));
	BD8P PAD_instruction_address_27_o(.A(instruction_address_O[27]), .PAD(instruction_address[27]));
	BD8P PAD_instruction_address_28_o(.A(instruction_address_O[28]), .PAD(instruction_address[28]));
	BD8P PAD_instruction_address_29_o(.A(instruction_address_O[29]), .PAD(instruction_address[29]));
	BD8P PAD_instruction_address_30_o(.A(instruction_address_O[30]), .PAD(instruction_address[30]));
	BD8P PAD_instruction_address_31_o(.A(instruction_address_O[31]), .PAD(instruction_address[31]));

	BD8P PAD_data_out_0_o(.A(data_out_O[0]), .PAD(data_out[0]));
	BD8P PAD_data_out_1_o(.A(data_out_O[1]), .PAD(data_out[1]));
	BD8P PAD_data_out_2_o(.A(data_out_O[2]), .PAD(data_out[2]));
	BD8P PAD_data_out_3_o(.A(data_out_O[3]), .PAD(data_out[3]));
	BD8P PAD_data_out_4_o(.A(data_out_O[4]), .PAD(data_out[4]));
	BD8P PAD_data_out_5_o(.A(data_out_O[5]), .PAD(data_out[5]));
	BD8P PAD_data_out_6_o(.A(data_out_O[6]), .PAD(data_out[6]));
	BD8P PAD_data_out_7_o(.A(data_out_O[7]), .PAD(data_out[7]));
	BD8P PAD_data_out_8_o(.A(data_out_O[8]), .PAD(data_out[8]));
	BD8P PAD_data_out_9_o(.A(data_out_O[9]), .PAD(data_out[9]));
	BD8P PAD_data_out_10_o(.A(data_out_O[10]), .PAD(data_out[10]));
	BD8P PAD_data_out_11_o(.A(data_out_O[11]), .PAD(data_out[11]));
	BD8P PAD_data_out_12_o(.A(data_out_O[12]), .PAD(data_out[12]));
	BD8P PAD_data_out_13_o(.A(data_out_O[13]), .PAD(data_out[13]));
	BD8P PAD_data_out_14_o(.A(data_out_O[14]), .PAD(data_out[14]));
	BD8P PAD_data_out_15_o(.A(data_out_O[15]), .PAD(data_out[15]));
	BD8P PAD_data_out_16_o(.A(data_out_O[16]), .PAD(data_out[16]));
	BD8P PAD_data_out_17_o(.A(data_out_O[17]), .PAD(data_out[17]));
	BD8P PAD_data_out_18_o(.A(data_out_O[18]), .PAD(data_out[18]));
	BD8P PAD_data_out_19_o(.A(data_out_O[19]), .PAD(data_out[19]));
	BD8P PAD_data_out_20_o(.A(data_out_O[20]), .PAD(data_out[20]));
	BD8P PAD_data_out_21_o(.A(data_out_O[21]), .PAD(data_out[21]));
	BD8P PAD_data_out_22_o(.A(data_out_O[22]), .PAD(data_out[22]));
	BD8P PAD_data_out_23_o(.A(data_out_O[23]), .PAD(data_out[23]));
	BD8P PAD_data_out_24_o(.A(data_out_O[24]), .PAD(data_out[24]));
	BD8P PAD_data_out_25_o(.A(data_out_O[25]), .PAD(data_out[25]));
	BD8P PAD_data_out_26_o(.A(data_out_O[26]), .PAD(data_out[26]));
	BD8P PAD_data_out_27_o(.A(data_out_O[27]), .PAD(data_out[27]));
	BD8P PAD_data_out_28_o(.A(data_out_O[28]), .PAD(data_out[28]));
	BD8P PAD_data_out_29_o(.A(data_out_O[29]), .PAD(data_out[29]));
	BD8P PAD_data_out_30_o(.A(data_out_O[30]), .PAD(data_out[30]));
	BD8P PAD_data_out_31_o(.A(data_out_O[31]), .PAD(data_out[31]));

	BD8P PAD_data_rw_address_0_o(.A(data_rw_address_O[0]), .PAD(data_rw_address[0]));
	BD8P PAD_data_rw_address_1_o(.A(data_rw_address_O[1]), .PAD(data_rw_address[1]));
	BD8P PAD_data_rw_address_2_o(.A(data_rw_address_O[2]), .PAD(data_rw_address[2]));
	BD8P PAD_data_rw_address_3_o(.A(data_rw_address_O[3]), .PAD(data_rw_address[3]));
	BD8P PAD_data_rw_address_4_o(.A(data_rw_address_O[4]), .PAD(data_rw_address[4]));
	BD8P PAD_data_rw_address_5_o(.A(data_rw_address_O[5]), .PAD(data_rw_address[5]));
	BD8P PAD_data_rw_address_6_o(.A(data_rw_address_O[6]), .PAD(data_rw_address[6]));
	BD8P PAD_data_rw_address_7_o(.A(data_rw_address_O[7]), .PAD(data_rw_address[7]));
	BD8P PAD_data_rw_address_8_o(.A(data_rw_address_O[8]), .PAD(data_rw_address[8]));
	BD8P PAD_data_rw_address_9_o(.A(data_rw_address_O[9]), .PAD(data_rw_address[9]));
	BD8P PAD_data_rw_address_10_o(.A(data_rw_address_O[10]), .PAD(data_rw_address[10]));
	BD8P PAD_data_rw_address_11_o(.A(data_rw_address_O[11]), .PAD(data_rw_address[11]));
	BD8P PAD_data_rw_address_12_o(.A(data_rw_address_O[12]), .PAD(data_rw_address[12]));
	BD8P PAD_data_rw_address_13_o(.A(data_rw_address_O[13]), .PAD(data_rw_address[13]));
	BD8P PAD_data_rw_address_14_o(.A(data_rw_address_O[14]), .PAD(data_rw_address[14]));
	BD8P PAD_data_rw_address_15_o(.A(data_rw_address_O[15]), .PAD(data_rw_address[15]));
	BD8P PAD_data_rw_address_16_o(.A(data_rw_address_O[16]), .PAD(data_rw_address[16]));
	BD8P PAD_data_rw_address_17_o(.A(data_rw_address_O[17]), .PAD(data_rw_address[17]));
	BD8P PAD_data_rw_address_18_o(.A(data_rw_address_O[18]), .PAD(data_rw_address[18]));
	BD8P PAD_data_rw_address_19_o(.A(data_rw_address_O[19]), .PAD(data_rw_address[19]));
	BD8P PAD_data_rw_address_20_o(.A(data_rw_address_O[20]), .PAD(data_rw_address[20]));
	BD8P PAD_data_rw_address_21_o(.A(data_rw_address_O[21]), .PAD(data_rw_address[21]));
	BD8P PAD_data_rw_address_22_o(.A(data_rw_address_O[22]), .PAD(data_rw_address[22]));
	BD8P PAD_data_rw_address_23_o(.A(data_rw_address_O[23]), .PAD(data_rw_address[23]));
	BD8P PAD_data_rw_address_24_o(.A(data_rw_address_O[24]), .PAD(data_rw_address[24]));
	BD8P PAD_data_rw_address_25_o(.A(data_rw_address_O[25]), .PAD(data_rw_address[25]));
	BD8P PAD_data_rw_address_26_o(.A(data_rw_address_O[26]), .PAD(data_rw_address[26]));
	BD8P PAD_data_rw_address_27_o(.A(data_rw_address_O[27]), .PAD(data_rw_address[27]));
	BD8P PAD_data_rw_address_28_o(.A(data_rw_address_O[28]), .PAD(data_rw_address[28]));
	BD8P PAD_data_rw_address_29_o(.A(data_rw_address_O[29]), .PAD(data_rw_address[29]));
	BD8P PAD_data_rw_address_30_o(.A(data_rw_address_O[30]), .PAD(data_rw_address[30]));
	BD8P PAD_data_rw_address_31_o(.A(data_rw_address_O[31]), .PAD(data_rw_address[31]));

	BD8P PAD_data_write_mask_0_o(.A(data_write_mask_O[0]), .PAD(data_write_mask[0]));
	BD8P PAD_data_write_mask_1_o(.A(data_write_mask_O[1]), .PAD(data_write_mask[1]));
	BD8P PAD_data_write_mask_2_o(.A(data_write_mask_O[2]), .PAD(data_write_mask[2]));
	BD8P PAD_data_write_mask_3_o(.A(data_write_mask_O[3]), .PAD(data_write_mask[3]));

endmodule

module top(real_time, instruction_in, boot_address, reset, clock, interrupt_request_software, interrupt_request_timer, interrupt_request_external, instruction_address, data_out, data_rw_address, data_write_mask);

	input real_time [58:0];
	input instruction_in [31:0];
	input boot_address [31:0];
	input reset;
	input clock;
	input interrupt_request_software;
	input interrupt_request_timer;
	input interrupt_request_external;
	output instruction_address [31:0];
	output data_out [31:0];
	output data_rw_address [31:0];
	output data_write_mask [3:0];

	wire real_time_I [58:0];
	wire instruction_in_I [31:0];
	wire boot_address_I [31:0];
	wire reset_I;
	wire clock_I;
	wire interrupt_request_software_I;
	wire interrupt_request_timer_I;
	wire interrupt_request_external;
	wire instruction_address_O [31:0];
	wire data_out_O [31:0];
	wire data_rw_address_O [31:0];
	wire data_write_mask_O [3:0];

	riscv_steel_core top_INST(
		.real_time(real_time_I),
		.instruction_in(instruction_in_I),
		.boot_address(boot_address_I),
		.reset(reset_I),
		.clock(clock_I),
		.interrupt_request_software(interrupt_request_software_I),
		.interrupt_request_timer(interrupt_request_timer_I),
		.interrupt_request_external(interrupt_request_external_I),
		.instruction_address(instruction_address_O),
		.data_out(data_out_O),
		.data_rw_address(data_rw_address_O),
		.data_write_mask(data_write_mask_O)
	);

	iopads IOPADS_INST(
		.real_time(real_time),
		.instruction_in(instruction_in),
		.boot_address(boot_address),
		.reset(reset),
		.clock(clock),
		.interrupt_request_software(interrupt_request_software),
		.interrupt_request_timer(interrupt_request_timer),
		.interrupt_request_external(interrupt_request_external),
		.instruction_address(instruction_address),
		.data_out(data_out),
		.data_rw_address(data_rw_address),
		.data_write_mask(data_write_mask),

		.real_time_I(real_time_I),
		.instruction_in_I(instruction_in_I),
		.boot_address_I(boot_address_I),
		.reset_I(reset_I),
		.clock_I(clock_I),
		.interrupt_request_software_I(interrupt_request_software_I),
		.interrupt_request_timer_I(interrupt_request_timer_I),
		.interrupt_request_external_I(interrupt_request_external_I),
		.instruction_address_O(instruction_address_O),
		.data_out_O(data_out_O),
		.data_rw_address_O(data_rw_address_O),
		.data_write_mask_O(data_write_mask_O),
	);
endmodule
*/	
