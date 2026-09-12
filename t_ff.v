module t_ff(
    input wire reset,
    input wire clk,
    input wire t,
    output reg q
);
     
    always @(posedge clk or posedge reset) begin
         if (reset) 
           q <= 0;
         else
        q <= t ? ~q : q;
  end
endmodule
