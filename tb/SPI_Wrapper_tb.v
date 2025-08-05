module SPI_Wrapper_tb #(
    parameter MEM_DEPTH = 256,
    parameter DATA_ADDR_SIZE = 8
) ();

  reg  clk;
  reg  rst_n;
  reg  SS_n;
  reg  MOSI;
  wire MISO;

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
    forever #1 clk = ~clk;  // Clock generation
  end

  integer i;


  //internals data inside SPI_Slave
  // DUT.spi_slave_inst.rx_data, DUT.spi_slave_inst.rx_valid, DUT.spi_slave_inst.cs,
  // DUT.spi_slave_inst.rd_addr_Done, DUT.spi_slave_inst.rx_data_reg, 
  // DUT.spi_slave_inst.bit_count

  //internals data inside Single_Port_Sync_RAM
  // DUT.ram_inst.din, DUT.ram_inst.rx_valid, DUT.ram_inst.tx_valid,
  // DUT.ram_inst.dout, DUT.ram_inst.wr_addr, DUT.ram_inst.rd_addr, DUT.ram_inst.mem


  initial begin

    // Load memory contents from file & reset signals
    $readmemh("mem.dat", DUT.ram_inst.mem);
    rst_n = 0;
    SS_n  = 1;  // Active low, so start high
    MOSI  = 0;
    DUT.spi_slave_inst.rd_addr_Done = 0;  // Reset the read address done flag
    repeat (2) @(negedge clk);

    //=========================================================================================
    // 1- Reset Test
    //=========================================================================================

    $display("\n============================================================================");
    $display("1- Reset Test: Checking initial state of SPI Wrapper and RAM...");
    $display("============================================================================\n");

    for (i = 0; i < DUT.ram_inst.MEM_DEPTH; i = i + 1) begin
      if (DUT.ram_inst.mem[i] !== 0) begin
        $display("1-Reset Test: Memory initialization failed at address %d: %h", i,
                 DUT.ram_inst.mem[i]);
        $stop;
      end
    end
    $display("1-Reset Test: Memory initialized successfully.");

    if (!DUT.ram_inst.dout && !DUT.ram_inst.tx_valid && !DUT.ram_inst.wr_addr && !DUT.ram_inst.rd_addr &&
        !DUT.spi_slave_inst.rx_data && !DUT.spi_slave_inst.rx_valid && !MISO)
      $display("\n1-Reset Test: SPI Wrapper Reset successfully.");
    else begin
      $display("\n1-Reset Test: SPI Wrapper Reset failed.");
      $stop;
    end
    @(negedge clk);

    // Release reset
    rst_n = 1;
    @(negedge clk);

    //=========================================================================================
    // 2- Test Writing Write_Address to RAM
    //=========================================================================================

    $display("\n============================================================================");
    $display("2- Write Address Case Test: Writing Write_Address to RAM...");
    $display("============================================================================\n");

    // Start SPI communication
    SS_n = 0;
    @(negedge clk);

    // Send Command (00) to the SPI Slave
    MOSI = 0;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);

    // Send Write Address (0111 0011 = 0x73 = 115) to the RAM
    MOSI = 0;
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
    repeat (2) @(negedge clk);

    // Check if the address was written correctly
    if (DUT.ram_inst.wr_addr !== 8'h73) begin
      $display("\n2- Write Address Case Test: Write Address mismatch: expected 0x73, got %h",
               DUT.ram_inst.wr_addr);
      $stop;
    end else begin
      $display("\n2- Write Address Case Test: Write Address successfully written: %h",
               DUT.ram_inst.wr_addr);
    end

    //=========================================================================================
    // 3- Test Writing DATA to RAM on the previously written address
    //=========================================================================================

    $display("\n============================================================================");
    $display("3- Write Data Case Test: Writing data to the previously written address...");
    $display("============================================================================\n");

    // Start SPI communication
    SS_n = 0;
    @(negedge clk);

    // Send Command (01) to the SPI Slave
    MOSI = 0;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);

    // Send Write Data (0000 1101 = 0x0D = 13) to the RAM
    MOSI = 0;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    MOSI = 1;

    // End SPI communication
    repeat (2) @(negedge clk);
    SS_n = 1;
    repeat (2) @(negedge clk);

    // Check if the data was written correctly
    if (DUT.ram_inst.mem[DUT.ram_inst.wr_addr] !== 8'h0D) begin
      $display("\n3- Write Data Case Test: Write Data mismatch: expected 0x0D, got %h",
               DUT.ram_inst.mem[DUT.ram_inst.wr_addr]);
      $stop;
    end else begin
      $display("\n3- Write Data Case Test: Write Data successfully written: %h",
               DUT.ram_inst.mem[DUT.ram_inst.wr_addr]);
    end

    //=========================================================================================
    // 4- Test Writing Read_Address to RAM
    //=========================================================================================

    $display("\n============================================================================");
    $display("4- Read Address Case Test: Writing Read_Address to RAM...");
    $display("============================================================================\n");

    // Start SPI communication
    SS_n = 0;
    @(negedge clk);

    // Send Command (10) to the SPI Slave
    MOSI = 1;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);

    // Send Read Address (0111 0011 = 0x73 = 115) to the RAM
    MOSI = 0;
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
    repeat (2) @(negedge clk);

    // Check if the address was written correctly
    if (DUT.ram_inst.rd_addr !== 8'h73) begin
      $display("\n4- Read Address Case Test: Read Address mismatch: expected 0x73, got %h",
               DUT.ram_inst.rd_addr);
      $stop;
    end else begin
      $display("\n4- Read Address Case Test: Read Address successfully written: %h",
               DUT.ram_inst.rd_addr);
    end

    //=========================================================================================
    // 5- Test Reading Data from RAM on the previously written address
    //=========================================================================================

    $display("\n============================================================================");
    $display("5- Read Data Case Test: Reading data from the previously written address...");
    $display("============================================================================\n");

    // Start SPI communication
    SS_n = 0;
    @(negedge clk);

    // Send Command (11) to the SPI Slave
    MOSI = 1;
    @(negedge clk);
    MOSI = 1;

    // Send dummy data (Random) to the RAM
    repeat (8) begin
      @(negedge clk);
      MOSI = $random;  // Random bit
    end

    repeat (4) @(negedge clk);
    $display("\n");

    // End SPI communication
    repeat (9) @(negedge clk);
    SS_n = 1;
    $display("\n");
    
    $stop;
  end


  always @(posedge clk) begin
    $display(
        "SS_n: %b, cs: %b, ns: %b, bit_count: %d, MOSI: %b, rx_data_reg: %b, rx_data: %b, rx_valid: %b, wr_addr: %h, *||* rd_addr: %h, dout: %h, tx_valid: %b, tx_data: %b, rd_addr_Done: %b, MISO: %b",
        DUT.spi_slave_inst.SS_n, DUT.spi_slave_inst.cs, DUT.spi_slave_inst.ns,
        DUT.spi_slave_inst.bit_count, MOSI, DUT.spi_slave_inst.rx_data_reg,
        DUT.spi_slave_inst.rx_data, DUT.spi_slave_inst.rx_valid, DUT.ram_inst.wr_addr,
        DUT.ram_inst.rd_addr, DUT.ram_inst.dout, DUT.ram_inst.tx_valid, DUT.spi_slave_inst.tx_data,
        DUT.spi_slave_inst.rd_addr_Done, MISO);
  end

endmodule
