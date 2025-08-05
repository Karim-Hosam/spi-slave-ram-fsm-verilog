module SPI_Slave_tb ();

  reg clk;
  reg rst_n;
  reg SS_n;
  reg MOSI;
  wire MISO;

  reg [7:0] tx_data;
  reg tx_valid;

  wire [9:0] rx_data;
  wire rx_valid;

  SPI_Slave #(
      .DATA_SIZE(8)
  ) DUT (
      .clk(clk),
      .rst_n(rst_n),
      .SS_n(SS_n),
      .MOSI(MOSI),
      .MISO(MISO),
      .tx_data(tx_data),
      .tx_valid(tx_valid),
      .rx_data(rx_data),
      .rx_valid(rx_valid)
  );

  initial begin
    clk = 0;
    forever #1 clk = ~clk;  // Clock generation
  end


  initial begin
    rst_n = 0;
    SS_n = 1;  // Active low, so start high
    MOSI = 0;
    tx_valid = 0;
    @(negedge clk);

    // check reset
    if (!rx_data && !rx_valid && !MISO) $display("Reset successful\n");
    else $display("Reset failed\n");
    @(negedge clk);

    // Release reset
    rst_n = 1;
    @(negedge clk);
  
    //========================================================
    // Test Writing
    //=========================================================
    
    // Start SPI communication
    SS_n = 0;
    repeat (2) @(negedge clk);

    // Start writing data
    MOSI = 0;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 1;

    // End SPI communication
    repeat (2) @(negedge clk);
    SS_n = 1;  
    $stop;
    
  end

  initial begin
    $monitor(
        "SS_n: %b, MOSI: %b, MISO: %b, tx_data: %b, tx_valid: %h, rx_data: %b, rx_valid: %b, cs: %b, rd_addr_Done: %b, rx_data_reg: %b, bit_count: %d",
        SS_n, MOSI, MISO, tx_data, tx_valid, rx_data, rx_valid, DUT.cs, DUT.rd_addr_Done,
        DUT.rx_data_reg, DUT.bit_count);
  end
endmodule
