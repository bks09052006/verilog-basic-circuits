module down_counter(
    input wire clk,
    input wire reset,
    output reg [3:0] q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b1111;    // starts at 15, not 0
        else
            q <= q - 1;      // decrement instead of increment
    end
endmodule
