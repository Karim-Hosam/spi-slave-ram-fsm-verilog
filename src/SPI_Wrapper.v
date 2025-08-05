module SPI_Wrapper #(
    parameter MEM_DEPTH = 256,
    parameter DATA_ADDR_SIZE = 8
) (
    input clk,
    input rst_n,
    input SS_n,
    input MOSI,
    output reg MISO
);
  reg rx_valid_reg, tx_valid_reg;
  reg [DATA_ADDR_SIZE + 1:0] ram_din_reg;
  reg [DATA_ADDR_SIZE - 1:0] ram_dout_reg;

  SPI_Slave #(
      .DATA_SIZE(DATA_ADDR_SIZE)
  ) spi_slave_inst (
      .clk  (clk),
      .rst_n(rst_n),
      .SS_n (SS_n),

      .MOSI(MOSI),
      .MISO(MISO),

      .rx_data (ram_din_reg),
      .rx_valid(rx_valid_reg),

      .tx_data (ram_dout_reg),
      .tx_valid(tx_valid_reg)
  );

  Single_Port_Sync_RAM #(
      .MEM_DEPTH(MEM_DEPTH),
      .ADDR_SIZE(DATA_ADDR_SIZE)
  ) ram_inst (
      .clk(clk),
      .rst_n(rst_n),
      .din(ram_din_reg),
      .rx_valid(rx_valid_reg),
      .tx_valid(tx_valid_reg),
      .dout(ram_dout_reg)
  );

endmodule


