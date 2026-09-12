module ring_counter(
    input wire clk,
    input wire reset,
    output reg [3:0] q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b0001;   // seed value: single 1
        else
            q <= {q[2:0], q[3]};   // shift left, wrap last bit to first
    end
endmodule
