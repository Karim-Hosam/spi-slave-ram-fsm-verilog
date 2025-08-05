module Up_Counter #(
    parameter COUNTER_BIT_SIZE = 4 
) (
    input clk,
    input clr,
    input rst_n,
    input enable,
    output reg [COUNTER_BIT_SIZE-1:0] count
);

  always @(posedge clk) begin
    if (clr || !rst_n) begin
      count <= 0;
    end else if (enable) begin
      count <= count + 1;  // Increment the counter
    end
  end

endmodule
