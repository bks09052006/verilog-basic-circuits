module tb_half_adder;

    reg a;
    reg b;
    wire sum;
    wire cout;


    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $monitor("Time=%0t | a=%b, b=%b | sum=%b, cout=%b", $time, a, b, sum, cout);
        
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        
        $finish;
    end

endmodule
 
