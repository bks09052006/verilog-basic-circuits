module mux_4to1 (
  input wire [3:0] i,
  input wire [1:0] sel,
  output wire y
);

  assign y = sel[1] ? (sel[0] ? i[3] : i[2]) : (sel[0] ? i[1] : i[0]);

endmodule
