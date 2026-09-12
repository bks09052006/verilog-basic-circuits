module bcd_counter_tb;
    reg clk, reset;
    wire [3:0] count;

    bcd_counter uut(.clk(clk), .reset(reset), .count(count));

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;
        #200 $finish;   // long enough to see it wrap from 9 back to 0 a couple times
    end
endmodule
