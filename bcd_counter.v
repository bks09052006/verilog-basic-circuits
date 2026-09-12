module bcd_counter(
    input wire clk,
    input wire reset,
    output reg [3:0] count
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0000;
        else if (count == 4'b1001)   // if count reaches 9
            count <= 4'b0000;         // reset back to 0
        else
            count <= count + 1;       // otherwise just increment normally
    end
endmodule
