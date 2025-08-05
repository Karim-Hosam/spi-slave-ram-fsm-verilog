module Single_Port_Sync_RAM #(
    parameter MEM_DEPTH = 256,
    parameter ADDR_SIZE = 8
) (
    input clk,
    input rst_n,

    input [ADDR_SIZE + 1:0] din,
    input rx_valid,

    output reg tx_valid,
    output reg [ADDR_SIZE - 1:0] dout
);

  reg [ADDR_SIZE - 1:0] mem[MEM_DEPTH - 1:0];

  reg [ADDR_SIZE - 1:0] wr_addr, rd_addr;

  always @(posedge clk) begin
    if (!rst_n) begin
      dout <= 0;
      tx_valid <= 0;
      wr_addr <= 0;
      rd_addr <= 0;
    end else begin
      if (rx_valid) begin
        case (din[ADDR_SIZE+1 : ADDR_SIZE])
          2'b00: wr_addr <= din[ADDR_SIZE-1:0];
          2'b01: mem[wr_addr] <= din[ADDR_SIZE-1:0];
          2'b10: begin
            tx_valid <= 0;
            rd_addr  <= din[ADDR_SIZE-1:0];
          end
          2'b11: begin
            dout <= mem[rd_addr];
            tx_valid <= 1;
          end
        endcase
      end
    end
  end

endmodule