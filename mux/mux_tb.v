module mux_4to1_tb;
  reg [3:0] i;
  reg [1:0] sel;
  wire y;
  
  mux_4to1 uut (
    .i(i),
    .sel(sel),
    .y(y)
  );
  
  initial begin 
    $monitor("Time=%0t | i=%b | sel=%b | y=%b", $time, i, sel, y);
    
    i = 4'b0011;
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;
    $finish;
  end
endmodule
