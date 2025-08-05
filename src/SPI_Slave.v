module SPI_Slave #(
    parameter DATA_SIZE = 8,

    parameter IDLE = 3'b000,
    parameter CHK_CMD = 3'b001,
    parameter WRITE = 3'b010,
    parameter READ_ADD = 3'b011,
    parameter READ_DATA = 3'b100
) (
    input clk,
    input rst_n,
    input SS_n,

    input MOSI,
    output reg MISO,

    input [DATA_SIZE-1:0] tx_data,
    input tx_valid,

    output reg [DATA_SIZE+1:0] rx_data,
    output reg rx_valid

);

  (* fsm_encoding = "gray" *) reg [2:0] cs, ns;

  reg rd_addr_Done;
  reg [0:DATA_SIZE+1] rx_data_reg;

  wire [3:0] bit_count;
  reg clr_counter, enable_counter;

  Up_Counter #(
      .COUNTER_BIT_SIZE(4)
  ) counter_inst (
      .clk(clk),
      .clr(clr_counter),
      .rst_n(rst_n),
      .enable(enable_counter),
      .count(bit_count)
  );

  //State Memory
  always @(posedge clk) begin
    if (!rst_n) cs <= IDLE;
    else cs <= ns;
  end

  //Next State Logic
  always @(*) begin
    case (cs)

      IDLE: begin
        if (SS_n) ns = IDLE;
        else ns = CHK_CMD;
      end

      CHK_CMD: begin
        if (SS_n) ns = IDLE;
        else if (MOSI == 1 && rd_addr_Done == 0) ns = READ_ADD;
        else if (MOSI == 1 && rd_addr_Done == 1) ns = READ_DATA;
        else if (MOSI == 0) ns = WRITE;
        else ns = CHK_CMD;
      end

      WRITE: begin
        if (SS_n) ns = IDLE;
        else ns = WRITE;
      end

      READ_ADD: begin
        if (SS_n) ns = IDLE;
        else ns = READ_ADD;
      end

      READ_DATA: begin
        if (SS_n) ns = IDLE;
        else ns = READ_DATA;
      end

      default: begin
        ns = IDLE;
      end

    endcase
  end

  //Output Logic
  always @(posedge clk) begin
    if (!rst_n) begin
      rx_data <= 0;
      rx_valid <= 0;
      MISO <= 0;
      clr_counter <= 1;
      enable_counter <= 0;
    end else begin
      case (cs)

        IDLE: begin
          rx_data <= 0;
          rx_valid <= 0;
          MISO <= 0;
          clr_counter <= 1;
          enable_counter <= 0;
        end

        CHK_CMD: begin
          clr_counter <= 0;
          enable_counter <= 1;
          rx_data_reg[bit_count] <= MOSI;
        end

        WRITE: begin
          if (bit_count < 10) begin
            rx_data_reg[bit_count] <= MOSI;
          end else begin
            rx_data  <= rx_data_reg;
            rx_valid <= 1;
          end
        end

        READ_ADD: begin
          if (bit_count < 10) begin
            rx_data_reg[bit_count] <= MOSI;
          end else begin
            rx_data <= rx_data_reg;
            rx_valid <= 1;
            rd_addr_Done <= 1;
          end
        end

        READ_DATA: begin
          if (!tx_valid) begin
            if (bit_count < 10) begin
              rx_data_reg[bit_count] <= MOSI;
            end else begin
              rx_data <= rx_data_reg;
              rx_valid <= 1;
              clr_counter <= 1;
              enable_counter <= 0;
            end
          end else begin
            enable_counter <= 1;
            MISO <= tx_data[bit_count];
            rd_addr_Done <= 0;
          end
        end

        default: begin
          rx_data <= 0;
          rx_valid <= 0;
          MISO <= 0;
          clr_counter <= 1;
          enable_counter <= 0;
        end
      endcase
    end
  end

endmodule
