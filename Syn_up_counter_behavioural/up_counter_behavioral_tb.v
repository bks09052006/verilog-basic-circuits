module up_counter_tb;
    reg clk, reset;
    wire [3:0] q;

    up_counter uut(.clk(clk), .reset(reset), .q(q));

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;
        #200 $finish;   // let it run long enough to see full wraparound (0 to 15 to 0)
    end
endmodule
