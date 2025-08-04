module up_counter #(
    parameter COUNTER_BIT_SIZE = 4
) (
    input clk,
    input clr,
    input enable,
    output reg [COUNTER_BIT_SIZE-1:0] count
);

  always @(posedge clk) begin
    if (clr) begin
      count <= 0;
    end else if (enable) begin
      count <= count + 1;  // Increment the counter
    end
  end

endmodule
