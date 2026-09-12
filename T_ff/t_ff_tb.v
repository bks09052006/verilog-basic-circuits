
module t_ff_tb;
    reg clk, t,reset;
    wire q;

    t_ff uut(.clk(clk), .t(t), .q(q), .reset(reset) );

    always #5 clk = ~clk;

    initial begin
         reset=1;
        #10 reset=0;
        #10 clk = 0; t = 0;
        #10 t = 1;  
        #40 t = 0; 
        #10 $finish;
    end
endmodule
