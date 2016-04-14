module s_box_7
  (
   input wire [5:0] 6_bit,
   output wire [4:0] 4_bit
   );

   logic [1:0] row;
   logic [3:0] col;

   assign row = {6_bit[5], 6_bit[0]};
   assign col = 6_bit[4:1];
   parameter [3:0] x00x = 4'b0000,
     x01x = 4'b0001,
     x02x = 4'b0010,
     x03x = 4'b0011,
     x04x = 4'b0100,
     x05x = 4'b0101,
     x06x = 4'b0110,
     x07x = 4'b0111,
     x08x = 4'b1000,
     x09x = 4'b1001,
     x10x = 4'b1010,
     x11x = 4'b1011,
     x12x = 4'b1100,
     x13x = 4'b1101,
     x14x = 4'b1110,
     x15x = 4'b1111;
   
     
   always_comb begin
      if (row == 0) begin
	 case(col)
	   x00x: 4_bit = 4'd4;
	   x01x: 4_bit = 4'd11;
	   x02x: 4_bit = 4'd2;
	   x03x: 4_bit = 4'd14;
	   x04x: 4_bit = 4'd15;
	   x05x: 4_bit = 4'd0;
	   x06x: 4_bit = 4'd8;
	   x07x: 4_bit = 4'd13;
	   x08x: 4_bit = 4'd3;
	   x09x: 4_bit = 4'd12;
	   x10x: 4_bit = 4'd9;
	   x11x: 4_bit = 4'd7;
	   x12x: 4_bit = 4'd5;
	   x13x: 4_bit = 4'd10;
	   x14x: 4_bit = 4'd6; 
	   x15x: 4_bit = 4'd1;
	 endcase // case (col)
      end // if (row == 0)
      else if (row == 1) begin
	 case(col)
	   x00x: 4_bit = 4'd13;
	   x01x: 4_bit = 4'd0;
	   x02x: 4_bit = 4'd11;
	   x03x: 4_bit = 4'd7;
	   x04x: 4_bit = 4'd4;
	   x05x: 4_bit = 4'd9;
	   x06x: 4_bit = 4'd1;
	   x07x: 4_bit = 4'd10;
	   x08x: 4_bit = 4'd14;
	   x09x: 4_bit = 4'd3;
	   x10x: 4_bit = 4'd5;
	   x11x: 4_bit = 4'd12;
	   x12x: 4_bit = 4'd2;
	   x13x: 4_bit = 4'd15;
	   x14x: 4_bit = 4'd8;
	   x15x: 4_bit = 4'd6;
	 endcase // case (col)
      end // if (row == 1)
      else if (row == 2) begin
	  case(col)
	    x00x: 4_bit = 4'd1;
	    x01x: 4_bit = 4'd4;
	    x02x: 4_bit = 4'd11;
	    x03x: 4_bit = 4'd13;
	    x04x: 4_bit = 4'd12;
	    x05x: 4_bit = 4'd3;
	    x06x: 4_bit = 4'd7;
	    x07x: 4_bit = 4'd14;
	    x08x: 4_bit = 4'd10;
	    x09x: 4_bit = 4'd15;
	    x10x: 4_bit = 4'd6;
	    x11x: 4_bit = 4'd8;
	    x12x: 4_bit = 4'd0;
	    x13x: 4_bit = 4'd5;
	    x14x: 4_bit = 4'd9; 
	    x15x: 4_bit = 4'd2;
	  endcase // case (col)
      end // if (row == 2)
      else if (row == 3) begin
	  case(col)
	    x00x: 4_bit = 4'd6;
	    x01x: 4_bit = 4'd11;
	    x02x: 4_bit = 4'd13;
	    x03x: 4_bit = 4'd8;
	    x04x: 4_bit = 4'd1;
	    x05x: 4_bit = 4'd4;
	    x06x: 4_bit = 4'd10;
	    x07x: 4_bit = 4'd7;
	    x08x: 4_bit = 4'd9;
	    x09x: 4_bit = 4'd5;
	    x10x: 4_bit = 4'd0;
	    x11x: 4_bit = 4'd15;
	    x12x: 4_bit = 4'd14;
	    x13x: 4_bit = 4'd2;
	    x14x: 4_bit = 4'd3; 
	    x15x: 4_bit = 4'd12;
	  endcase // case (col)
      end // if (row == 3)
   end // always_comb
endmodule // s_box_7
