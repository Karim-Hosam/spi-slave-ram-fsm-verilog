module Single_Port_Sync_RAM_tb ();

  reg clk;
  reg rst_n;
  reg [9:0] din;
  reg rx_valid;
  wire tx_valid;
  wire [7:0] dout;

  Single_Port_Sync_RAM #(
      .MEM_DEPTH(256),
      .ADDR_SIZE(8)
  ) DUT (
      .clk(clk),
      .rst_n(rst_n),
      .din(din),
      .rx_valid(rx_valid),
      .tx_valid(tx_valid),
      .dout(dout)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;  // Clock generation
  end

  initial begin
    rst_n = 0;
    rx_valid = 0;
    din = 10'b0;

    repeat (2) @(negedge clk);
    rst_n = 1;  // Release reset

    repeat (2) @(negedge clk);
    rx_valid = 1;
    din = {2'b00, 8'hA0};  // Write address

    repeat (2) @(negedge clk);
    din = {2'b01, 8'h55};  // Write data

    repeat (2) @(negedge clk);
    din = {2'b10, 8'hA0};  // Read address

    repeat (2) @(negedge clk);
    rx_valid = 0;  // Stop valid signal

    repeat (2) @(negedge clk);
    rx_valid = 1;
    din = {2'b11, 8'hA0};  // Read data

    repeat (2) @(negedge clk);
    $stop;
  end

  initial begin
    $monitor("din: %b, dout: %b, tx_valid: %b", din, dout, tx_valid);
  end
endmodule
