module expansion_p_box
  (
   input wire [31:0] data,
   output wire [47:0] 48bit
   );
   
   assign 48bit = {data[32], data[1], data[2], data[3], data[4], data[5], 
		       data[4], data[5], data[6], data[7], data[8], data[9], 
		       data[8], data[9], data[10], data[11], data[12], data[13], 
		       data[12], data[13], data[14], data[15], data[16], data[17],
		       data[16], data[17], data[18], data[19], data[20], data[21],
		       data[20], data[21], data[22], data[23], data[24], data[25],
		       data[24], data[25], data[26], data[27], data[28], data[29], 
	               data[28], data[29], data[30], data[31], data[32], data[1]};
endmodule // expansion_p_box
