module tb_4to1_demux;
reg i;
reg [1:0]sel;
wire [3:0]y;

demux_4to1 uut(
  .i(i),
  .sel(sel),
  .y(y)
);

initial begin
$monitor(" $time=%0t | i=%b | sel=%b | y=%b ", $time , i ,sel,y);
 sel=2'b00;i=1'b0;#10;
 sel=2'b00;i=1'b1;#10;
 sel=2'b01;i=1'b0;#10;
 sel=2'b01;i=1'b1;#10;
 sel=2'b10;i=1'b0;#10;
 sel=2'b10;i=1'b1;#10;
 sel=2'b11;i=1'b0;#10;
 sel=2'b11;i=1'b1;#10;
$finish;
end
endmodule
