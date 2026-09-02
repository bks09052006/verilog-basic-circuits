module demux_4to1(
input wire i,
input wire [1:0]sel,
output wire [3:0]y
);

assign y[0] = ( sel == 2'b00 ) ? i : 1'b0 ;
assign y[1] = ( sel == 2'b01 ) ? i : 1'b0 ;
assign y[2] = ( sel == 2'b10 ) ? i : 1'b0 ;
assign y[3] = ( sel == 2'b11 ) ? i : 1'b0 ;

endmodule
