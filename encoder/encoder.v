module encoder(
input wire [3:0]i,
output wire [1:0]y
);

assign y[1]=i[3] | i[2] ;
assign y[0]=i[3] | i[1] ;
assign valid = i[3] | i[2] | i[1] | i[0];

endmodule
