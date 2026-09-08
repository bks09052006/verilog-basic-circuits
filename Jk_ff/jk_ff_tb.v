module jk_ff_tb;
    reg clk, j, k;
    wire q;

    jk_ff uut(.clk(clk), .j(j), .k(k), .q(q));

    always #5 clk = ~clk;

    initial begin
        clk = 0; j = 0; k = 0;
        #10 {j,k} = 2'b00;  
        #10 {j,k} = 2'b01;  
        #10 {j,k} = 2'b10; 
        #10 {j,k} = 2'b11;  
        #10 $finish;
    end
endmodule
