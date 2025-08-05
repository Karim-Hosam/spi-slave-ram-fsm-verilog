module SPI_Wrapper_tb #(
    parameter MEM_DEPTH = 256,
    parameter DATA_ADDR_SIZE = 8
) ();

  reg clk;
  reg rst_n;
  reg SS_n;
  reg MOSI;
  wire MISO;

  wire [DATA_ADDR_SIZE + 1:0] ram_din;
  wire [DATA_ADDR_SIZE - 1:0] ram_dout;
  wire rx_valid, tx_valid;

  SPI_Wrapper #(
      .MEM_DEPTH(MEM_DEPTH),
      .DATA_ADDR_SIZE(DATA_ADDR_SIZE)
  ) DUT (
      .clk  (clk),
      .rst_n(rst_n),
      .SS_n (SS_n),
      .MOSI (MOSI),
      .MISO (MISO)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;  // Clock generation
  end

  initial begin
    rst_n = 0;
    SS_n  = 1;  // Active low, so start high
    MOSI  = 0;

    repeat (2) @(negedge clk);
    rst_n = 1;  // Release reset

    // Add test cases here for SPI communication
    // ...

    $stop;  // Stop simulation
  end
  initial begin
    $monitor("clk: %b, rst_n: %b, SS_n: %b, MOSI: %b, MISO: %b", clk, rst_n, SS_n, MOSI, MISO);
  end
endmodule