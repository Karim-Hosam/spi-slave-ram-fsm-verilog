module SPI_Slave (
    input clk,
    input rst_n,

    input MOSI,
    input SS_n,

    input [7:0] tx_data,
    input tx_valid,

    output reg [9:0] rx_data,
    output reg rx_valid,

    output reg MISO
);

  reg [3:0] bit_count;
  reg clr_counter, enable_counter;

  up_counter #(
      .COUNTER_BIT_SIZE(4)
  ) counter (
      .clk(clk),
      .clr(~rst_n),
      .enable(rx_valid),
      .count(rx_data)
  );

  

endmodule
