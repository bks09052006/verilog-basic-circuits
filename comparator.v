module comparator(
input wire a,
input wire b,
output wire gret,
output wire eq,
output wire les
);

assign gret=(a>b);
assign eq=(a==b);
assign les=(a<b);

endmodule
