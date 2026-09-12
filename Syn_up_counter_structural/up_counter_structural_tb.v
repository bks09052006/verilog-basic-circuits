module syn_up_counter_structural_tb;
    reg clk, reset;
    wire [3:0] q;

    syn_up_counter_structural uut(.clk(clk), .reset(reset), .q(q));

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;
        #200 $finish;  
    end
endmodule
