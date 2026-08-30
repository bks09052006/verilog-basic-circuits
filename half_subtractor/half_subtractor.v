module half_subtractor(
input wire a,
input wire b,
output wire borrow,
output wire diff
);

assign diff=a^b;
assign borrow=~a&b;
 
endmodule 
