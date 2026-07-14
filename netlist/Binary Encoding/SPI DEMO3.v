// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug  6 01:16:05 2025
// Host        : DESKTOP-PHD9ORN running 64-bit major release  (build 9200)
// Command     : write_verilog {F:/D/DigitalCourse/Project2/SPI DEMO3.v}
// Design      : SPI_Wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SPI_Slave
   (out,
    MISO_OBUF,
    Q,
    tx_valid_reg__0,
    \rd_addr_reg[7] ,
    mem_reg,
    WEA,
    E,
    \rd_addr_reg[7]_0 ,
    SR,
    \count_reg[2] ,
    clk_IBUF_BUFG,
    rst_n_IBUF,
    tx_valid_reg,
    SS_n_IBUF,
    D);
  output [0:0]out;
  output MISO_OBUF;
  output [2:0]Q;
  output tx_valid_reg__0;
  output [7:0]\rd_addr_reg[7] ;
  output mem_reg;
  output [0:0]WEA;
  output [0:0]E;
  output [0:0]\rd_addr_reg[7]_0 ;
  input [0:0]SR;
  input \count_reg[2] ;
  input clk_IBUF_BUFG;
  input rst_n_IBUF;
  input tx_valid_reg;
  input SS_n_IBUF;
  input [0:0]D;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_gray_ns_reg[0]_i_2_n_0 ;
  wire \FSM_gray_ns_reg[2]_i_2_n_0 ;
  wire GND_2;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire [2:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire VCC_2;
  wire [0:0]WEA;
  wire clk_IBUF_BUFG;
  wire clr_counter_i_2_n_0;
  wire clr_counter_reg_n_0;
  wire \count_reg[2] ;
  wire counter_inst_n_10;
  wire counter_inst_n_11;
  wire counter_inst_n_12;
  wire counter_inst_n_13;
  wire counter_inst_n_14;
  wire counter_inst_n_15;
  wire counter_inst_n_16;
  wire counter_inst_n_17;
  wire counter_inst_n_18;
  wire counter_inst_n_19;
  wire counter_inst_n_3;
  wire counter_inst_n_4;
  wire counter_inst_n_5;
  wire counter_inst_n_6;
  wire counter_inst_n_7;
  wire counter_inst_n_8;
  wire counter_inst_n_9;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire enable_counter_i_2_n_0;
  wire enable_counter_reg_n_0;
  wire mem_reg;
  wire [2:0]ns__0;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire [9:8]ram_din_reg;
  wire rd_addr_Done_reg_n_0;
  wire [7:0]\rd_addr_reg[7] ;
  wire [0:0]\rd_addr_reg[7]_0 ;
  wire rst_n_IBUF;
  wire [9:0]rx_data1_in;
  wire \rx_data_reg[0]_i_2_n_0 ;
  wire \rx_data_reg_reg_n_0_[0] ;
  wire \rx_data_reg_reg_n_0_[1] ;
  wire \rx_data_reg_reg_n_0_[2] ;
  wire \rx_data_reg_reg_n_0_[3] ;
  wire \rx_data_reg_reg_n_0_[4] ;
  wire \rx_data_reg_reg_n_0_[5] ;
  wire \rx_data_reg_reg_n_0_[6] ;
  wire \rx_data_reg_reg_n_0_[7] ;
  wire \rx_data_reg_reg_n_0_[8] ;
  wire \rx_data_reg_reg_n_0_[9] ;
  wire rx_valid_i_1_n_0;
  wire rx_valid_reg__0;
  wire tx_valid_reg;
  wire tx_valid_reg__0;

  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:111,READ_ADD:011,READ_DATA:010,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns__0[0]),
        .Q(cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:111,READ_ADD:011,READ_DATA:010,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns__0[1]),
        .Q(out),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:111,READ_ADD:011,READ_DATA:010,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns__0[2]),
        .Q(cs[2]),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_gray_ns_reg[0] 
       (.CLR(GND_2),
        .D(counter_inst_n_16),
        .G(\FSM_gray_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns__0[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_gray_ns_reg[0]_i_2 
       (.I0(D),
        .I1(rd_addr_Done_reg_n_0),
        .O(\FSM_gray_ns_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_gray_ns_reg[1] 
       (.CLR(GND_2),
        .D(counter_inst_n_15),
        .G(\FSM_gray_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns__0[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_gray_ns_reg[2] 
       (.CLR(GND_2),
        .D(counter_inst_n_14),
        .G(\FSM_gray_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns__0[2]));
  LUT3 #(
    .INIT(8'h8F)) 
    \FSM_gray_ns_reg[2]_i_2 
       (.I0(cs[0]),
        .I1(out),
        .I2(cs[2]),
        .O(\FSM_gray_ns_reg[2]_i_2_n_0 ));
  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  LUT4 #(
    .INIT(16'h1011)) 
    MISO_i_1
       (.I0(cs[0]),
        .I1(cs[2]),
        .I2(tx_valid_reg),
        .I3(out),
        .O(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(clk_IBUF_BUFG),
        .CE(MISO_i_1_n_0),
        .D(\count_reg[2] ),
        .Q(MISO_OBUF),
        .R(SR));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  LUT4 #(
    .INIT(16'hA0B0)) 
    clr_counter_i_2
       (.I0(cs[0]),
        .I1(cs[2]),
        .I2(out),
        .I3(tx_valid_reg),
        .O(clr_counter_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    clr_counter_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter_inst_n_19),
        .Q(clr_counter_reg_n_0),
        .S(SR));
  Up_Counter counter_inst
       (.D({counter_inst_n_14,counter_inst_n_15,counter_inst_n_16}),
        .E(counter_inst_n_3),
        .\FSM_gray_cs_reg[0] (enable_counter_i_2_n_0),
        .\FSM_gray_cs_reg[0]_0 (clr_counter_i_2_n_0),
        .MOSI(D),
        .Q(Q),
        .SS_n_IBUF(SS_n_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clr_counter_reg(counter_inst_n_19),
        .clr_counter_reg_0(clr_counter_reg_n_0),
        .enable_counter_reg(counter_inst_n_17),
        .enable_counter_reg_0(enable_counter_reg_n_0),
        .out({cs[2],out,cs[0]}),
        .rd_addr_Done_reg(counter_inst_n_18),
        .rd_addr_Done_reg_0(\FSM_gray_ns_reg[0]_i_2_n_0 ),
        .rd_addr_Done_reg_1(rd_addr_Done_reg_n_0),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg_reg[0] ({counter_inst_n_4,counter_inst_n_5,counter_inst_n_6,counter_inst_n_7,counter_inst_n_8,counter_inst_n_9,counter_inst_n_10,counter_inst_n_11,counter_inst_n_12,counter_inst_n_13}),
        .tx_valid_reg(tx_valid_reg),
        .tx_valid_reg__0(\rx_data_reg[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    enable_counter_i_2
       (.I0(ns__0[1]),
        .I1(ns__0[0]),
        .I2(ns__0[2]),
        .O(enable_counter_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enable_counter_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter_inst_n_17),
        .Q(enable_counter_reg_n_0),
        .R(SR));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_1
       (.I0(ram_din_reg[8]),
        .I1(ram_din_reg[9]),
        .I2(rx_valid_reg__0),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_2
       (.I0(rx_valid_reg__0),
        .I1(ram_din_reg[9]),
        .I2(ram_din_reg[8]),
        .O(WEA));
  LUT3 #(
    .INIT(8'h20)) 
    \rd_addr[7]_i_1 
       (.I0(rx_valid_reg__0),
        .I1(ram_din_reg[8]),
        .I2(ram_din_reg[9]),
        .O(\rd_addr_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    rd_addr_Done_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter_inst_n_18),
        .Q(rd_addr_Done_reg_n_0),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'hA020)) 
    \rx_data[0]_i_1 
       (.I0(\rx_data_reg_reg_n_0_[9] ),
        .I1(cs[2]),
        .I2(out),
        .I3(cs[0]),
        .O(rx_data1_in[0]));
  LUT4 #(
    .INIT(16'hA020)) 
    \rx_data[1]_i_1 
       (.I0(\rx_data_reg_reg_n_0_[8] ),
        .I1(cs[2]),
        .I2(out),
        .I3(cs[0]),
        .O(rx_data1_in[1]));
  LUT4 #(
    .INIT(16'hA020)) 
    \rx_data[2]_i_1 
       (.I0(\rx_data_reg_reg_n_0_[7] ),
        .I1(cs[2]),
        .I2(out),
        .I3(cs[0]),
        .O(rx_data1_in[2]));
  LUT4 #(
    .INIT(16'hA020)) 
    \rx_data[3]_i_1 
       (.I0(\rx_data_reg_reg_n_0_[6] ),
        .I1(cs[2]),
        .I2(out),
        .I3(cs[0]),
        .O(rx_data1_in[3]));
  LUT4 #(
    .INIT(16'hA020)) 
    \rx_data[4]_i_1 
       (.I0(\rx_data_reg_reg_n_0_[5] ),
        .I1(cs[2]),
        .I2(out),
        .I3(cs[0]),
        .O(rx_data1_in[4]));
  LUT4 #(
    .INIT(16'hA020)) 
    \rx_data[5]_i_1 
       (.I0(\rx_data_reg_reg_n_0_[4] ),
        .I1(cs[2]),
        .I2(out),
        .I3(cs[0]),
        .O(rx_data1_in[5]));
  LUT4 #(
    .INIT(16'hA020)) 
    \rx_data[6]_i_1 
       (.I0(\rx_data_reg_reg_n_0_[3] ),
        .I1(cs[2]),
        .I2(out),
        .I3(cs[0]),
        .O(rx_data1_in[6]));
  LUT4 #(
    .INIT(16'hA020)) 
    \rx_data[7]_i_1 
       (.I0(\rx_data_reg_reg_n_0_[2] ),
        .I1(cs[2]),
        .I2(out),
        .I3(cs[0]),
        .O(rx_data1_in[7]));
  LUT4 #(
    .INIT(16'hA020)) 
    \rx_data[8]_i_1 
       (.I0(\rx_data_reg_reg_n_0_[1] ),
        .I1(cs[2]),
        .I2(out),
        .I3(cs[0]),
        .O(rx_data1_in[8]));
  LUT4 #(
    .INIT(16'hA020)) 
    \rx_data[9]_i_2 
       (.I0(\rx_data_reg_reg_n_0_[0] ),
        .I1(cs[2]),
        .I2(out),
        .I3(cs[0]),
        .O(rx_data1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_3),
        .D(rx_data1_in[0]),
        .Q(\rd_addr_reg[7] [0]),
        .R(SR));
  LUT4 #(
    .INIT(16'h30FB)) 
    \rx_data_reg[0]_i_2 
       (.I0(tx_valid_reg),
        .I1(out),
        .I2(cs[2]),
        .I3(cs[0]),
        .O(\rx_data_reg[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_3),
        .D(rx_data1_in[1]),
        .Q(\rd_addr_reg[7] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_3),
        .D(rx_data1_in[2]),
        .Q(\rd_addr_reg[7] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_3),
        .D(rx_data1_in[3]),
        .Q(\rd_addr_reg[7] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_3),
        .D(rx_data1_in[4]),
        .Q(\rd_addr_reg[7] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_3),
        .D(rx_data1_in[5]),
        .Q(\rd_addr_reg[7] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_3),
        .D(rx_data1_in[6]),
        .Q(\rd_addr_reg[7] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_3),
        .D(rx_data1_in[7]),
        .Q(\rd_addr_reg[7] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_3),
        .D(rx_data1_in[8]),
        .Q(ram_din_reg[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_3),
        .D(rx_data1_in[9]),
        .Q(ram_din_reg[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_4),
        .D(D),
        .Q(\rx_data_reg_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_5),
        .D(D),
        .Q(\rx_data_reg_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_6),
        .D(D),
        .Q(\rx_data_reg_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_7),
        .D(D),
        .Q(\rx_data_reg_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_8),
        .D(D),
        .Q(\rx_data_reg_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_9),
        .D(D),
        .Q(\rx_data_reg_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_10),
        .D(D),
        .Q(\rx_data_reg_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_11),
        .D(D),
        .Q(\rx_data_reg_reg_n_0_[7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_12),
        .D(D),
        .Q(\rx_data_reg_reg_n_0_[8] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_13),
        .D(D),
        .Q(\rx_data_reg_reg_n_0_[9] ),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h8C)) 
    rx_valid_i_1
       (.I0(cs[0]),
        .I1(out),
        .I2(cs[2]),
        .O(rx_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(counter_inst_n_3),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid_reg__0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    tx_valid_i_1
       (.I0(ram_din_reg[8]),
        .I1(rx_valid_reg__0),
        .I2(ram_din_reg[9]),
        .I3(tx_valid_reg),
        .O(tx_valid_reg__0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \wr_addr[7]_i_1 
       (.I0(rx_valid_reg__0),
        .I1(ram_din_reg[9]),
        .I2(ram_din_reg[8]),
        .O(E));
endmodule

(* DATA_ADDR_SIZE = "8" *) (* MEM_DEPTH = "256" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module SPI_Wrapper
   (clk,
    rst_n,
    SS_n,
    MOSI,
    MISO);
  input clk;
  input rst_n;
  input SS_n;
  input MOSI;
  output MISO;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire [2:0]bit_count;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire [7:0]ram_din_reg;
  wire ram_inst_n_0;
  wire ram_inst_n_2;
  wire rst_n;
  wire rst_n_IBUF;
  wire spi_slave_inst_n_0;
  wire spi_slave_inst_n_14;
  wire spi_slave_inst_n_16;
  wire spi_slave_inst_n_17;
  wire spi_slave_inst_n_5;
  wire tx_valid_reg;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  Single_Port_Sync_RAM ram_inst
       (.E(spi_slave_inst_n_16),
        .MISO_reg(ram_inst_n_2),
        .Q(ram_din_reg),
        .WEA(mem),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\count_reg[2] (bit_count),
        .out(spi_slave_inst_n_0),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (spi_slave_inst_n_14),
        .\rx_data_reg[8]_0 (spi_slave_inst_n_5),
        .rx_valid_reg(spi_slave_inst_n_17),
        .tx_valid_reg(tx_valid_reg),
        .\wr_addr_reg[0]_0 (ram_inst_n_0));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  SPI_Slave spi_slave_inst
       (.D(MOSI_IBUF),
        .E(spi_slave_inst_n_16),
        .MISO_OBUF(MISO_OBUF),
        .Q(bit_count),
        .SR(ram_inst_n_0),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\count_reg[2] (ram_inst_n_2),
        .mem_reg(spi_slave_inst_n_14),
        .out(spi_slave_inst_n_0),
        .\rd_addr_reg[7] (ram_din_reg),
        .\rd_addr_reg[7]_0 (spi_slave_inst_n_17),
        .rst_n_IBUF(rst_n_IBUF),
        .tx_valid_reg(tx_valid_reg),
        .tx_valid_reg__0(spi_slave_inst_n_5));
endmodule

module Single_Port_Sync_RAM
   (\wr_addr_reg[0]_0 ,
    tx_valid_reg,
    MISO_reg,
    clk_IBUF_BUFG,
    rst_n_IBUF,
    \rx_data_reg[8] ,
    Q,
    WEA,
    \rx_data_reg[8]_0 ,
    \count_reg[2] ,
    out,
    E,
    rx_valid_reg);
  output \wr_addr_reg[0]_0 ;
  output tx_valid_reg;
  output MISO_reg;
  input clk_IBUF_BUFG;
  input rst_n_IBUF;
  input \rx_data_reg[8] ;
  input [7:0]Q;
  input [0:0]WEA;
  input \rx_data_reg[8]_0 ;
  input [2:0]\count_reg[2] ;
  input [0:0]out;
  input [0:0]E;
  input [0:0]rx_valid_reg;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]E;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_reg;
  wire [7:0]Q;
  wire [0:0]WEA;
  wire clk_IBUF_BUFG;
  wire [2:0]\count_reg[2] ;
  wire [0:0]out;
  wire [7:0]ram_dout_reg;
  wire [7:0]rd_addr;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire \rx_data_reg[8]_0 ;
  wire [0:0]rx_valid_reg;
  wire tx_valid_reg;
  wire [7:0]wr_addr;
  wire \wr_addr_reg[0]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_gray_cs[2]_i_1 
       (.I0(rst_n_IBUF),
        .O(\wr_addr_reg[0]_0 ));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hB800)) 
    MISO_i_2
       (.I0(MISO_i_3_n_0),
        .I1(\count_reg[2] [2]),
        .I2(MISO_i_4_n_0),
        .I3(out),
        .O(MISO_reg));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_3
       (.I0(ram_dout_reg[0]),
        .I1(ram_dout_reg[1]),
        .I2(\count_reg[2] [1]),
        .I3(ram_dout_reg[2]),
        .I4(\count_reg[2] [0]),
        .I5(ram_dout_reg[3]),
        .O(MISO_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_4
       (.I0(ram_dout_reg[4]),
        .I1(ram_dout_reg[5]),
        .I2(\count_reg[2] [1]),
        .I3(ram_dout_reg[6]),
        .I4(\count_reg[2] [0]),
        .I5(ram_dout_reg[7]),
        .O(MISO_i_4_n_0));
  VCC VCC
       (.P(\<const1> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,wr_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,rd_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(ram_dout_reg),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\wr_addr_reg[0]_0 ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(Q[0]),
        .Q(rd_addr[0]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(Q[1]),
        .Q(rd_addr[1]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(Q[2]),
        .Q(rd_addr[2]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(Q[3]),
        .Q(rd_addr[3]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(Q[4]),
        .Q(rd_addr[4]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(Q[5]),
        .Q(rd_addr[5]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(Q[6]),
        .Q(rd_addr[6]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg),
        .D(Q[7]),
        .Q(rd_addr[7]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg__0
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[8]_0 ),
        .Q(tx_valid_reg),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[0]),
        .Q(wr_addr[0]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[1]),
        .Q(wr_addr[1]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[2]),
        .Q(wr_addr[2]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[3]),
        .Q(wr_addr[3]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[4]),
        .Q(wr_addr[4]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[5]),
        .Q(wr_addr[5]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[6]),
        .Q(wr_addr[6]),
        .R(\wr_addr_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q[7]),
        .Q(wr_addr[7]),
        .R(\wr_addr_reg[0]_0 ));
endmodule

module Up_Counter
   (Q,
    E,
    \rx_data_reg_reg[0] ,
    D,
    enable_counter_reg,
    rd_addr_Done_reg,
    clr_counter_reg,
    clr_counter_reg_0,
    rst_n_IBUF,
    out,
    tx_valid_reg,
    tx_valid_reg__0,
    SS_n_IBUF,
    rd_addr_Done_reg_0,
    MOSI,
    enable_counter_reg_0,
    \FSM_gray_cs_reg[0] ,
    rd_addr_Done_reg_1,
    \FSM_gray_cs_reg[0]_0 ,
    clk_IBUF_BUFG);
  output [2:0]Q;
  output [0:0]E;
  output [9:0]\rx_data_reg_reg[0] ;
  output [2:0]D;
  output enable_counter_reg;
  output rd_addr_Done_reg;
  output clr_counter_reg;
  input clr_counter_reg_0;
  input rst_n_IBUF;
  input [2:0]out;
  input tx_valid_reg;
  input tx_valid_reg__0;
  input SS_n_IBUF;
  input rd_addr_Done_reg_0;
  input [0:0]MOSI;
  input [0:0]enable_counter_reg_0;
  input \FSM_gray_cs_reg[0] ;
  input rd_addr_Done_reg_1;
  input \FSM_gray_cs_reg[0]_0 ;
  input clk_IBUF_BUFG;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_gray_cs_reg[0] ;
  wire \FSM_gray_cs_reg[0]_0 ;
  wire \FSM_gray_ns_reg[2]_i_3_n_0 ;
  wire [0:0]MOSI;
  wire [2:0]Q;
  wire SS_n_IBUF;
  wire [3:3]bit_count;
  wire clk_IBUF_BUFG;
  wire clr_counter;
  wire clr_counter_reg;
  wire clr_counter_reg_0;
  wire \count[0]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire enable_counter;
  wire enable_counter_reg;
  wire [0:0]enable_counter_reg_0;
  wire [2:0]out;
  wire [3:1]p_0_in;
  wire rd_addr_Done_i_2_n_0;
  wire rd_addr_Done_reg;
  wire rd_addr_Done_reg_0;
  wire rd_addr_Done_reg_1;
  wire rst_n_IBUF;
  wire \rx_data[9]_i_3_n_0 ;
  wire [9:0]\rx_data_reg_reg[0] ;
  wire tx_valid_reg;
  wire tx_valid_reg__0;

  LUT6 #(
    .INIT(64'h550055000000F355)) 
    \FSM_gray_ns_reg[0]_i_1 
       (.I0(SS_n_IBUF),
        .I1(\FSM_gray_ns_reg[2]_i_3_n_0 ),
        .I2(rd_addr_Done_reg_0),
        .I3(out[0]),
        .I4(out[2]),
        .I5(out[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h300033A0)) 
    \FSM_gray_ns_reg[1]_i_1 
       (.I0(\FSM_gray_ns_reg[2]_i_3_n_0 ),
        .I1(SS_n_IBUF),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h2000200A20002000)) 
    \FSM_gray_ns_reg[2]_i_1 
       (.I0(out[0]),
        .I1(SS_n_IBUF),
        .I2(out[2]),
        .I3(out[1]),
        .I4(MOSI),
        .I5(\FSM_gray_ns_reg[2]_i_3_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_gray_ns_reg[2]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(bit_count),
        .I4(enable_counter_reg_0),
        .O(\FSM_gray_ns_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF01FFFFFF010000)) 
    clr_counter_i_1
       (.I0(\FSM_gray_cs_reg[0] ),
        .I1(out[1]),
        .I2(out[2]),
        .I3(\FSM_gray_cs_reg[0]_0 ),
        .I4(clr_counter),
        .I5(clr_counter_reg_0),
        .O(clr_counter_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0C0C00BF)) 
    clr_counter_i_3
       (.I0(tx_valid_reg),
        .I1(out[1]),
        .I2(\rx_data[9]_i_3_n_0 ),
        .I3(out[2]),
        .I4(out[0]),
        .O(clr_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(Q[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[3]_i_1 
       (.I0(clr_counter_reg_0),
        .I1(rst_n_IBUF),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_2 
       (.I0(bit_count),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_counter_reg_0),
        .D(\count[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_counter_reg_0),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_counter_reg_0),
        .D(\count[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_counter_reg_0),
        .D(p_0_in[3]),
        .Q(bit_count),
        .R(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    enable_counter_i_1
       (.I0(\FSM_gray_cs_reg[0] ),
        .I1(out[1]),
        .I2(tx_valid_reg),
        .I3(out[2]),
        .I4(enable_counter),
        .I5(enable_counter_reg_0),
        .O(enable_counter_reg));
  LUT5 #(
    .INIT(32'h11110111)) 
    enable_counter_i_3
       (.I0(out[0]),
        .I1(out[2]),
        .I2(\rx_data[9]_i_3_n_0 ),
        .I3(out[1]),
        .I4(tx_valid_reg),
        .O(enable_counter));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    rd_addr_Done_i_1
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(rst_n_IBUF),
        .I4(rd_addr_Done_i_2_n_0),
        .I5(rd_addr_Done_reg_1),
        .O(rd_addr_Done_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h1F001FFF)) 
    rd_addr_Done_i_2
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(bit_count),
        .I3(out[0]),
        .I4(tx_valid_reg),
        .O(rd_addr_Done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0003CD03)) 
    \rx_data[9]_i_1 
       (.I0(tx_valid_reg),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \rx_data[9]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(bit_count),
        .O(\rx_data[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \rx_data_reg[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rst_n_IBUF),
        .I3(tx_valid_reg__0),
        .I4(Q[2]),
        .I5(bit_count),
        .O(\rx_data_reg_reg[0] [9]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \rx_data_reg[1]_i_1 
       (.I0(tx_valid_reg__0),
        .I1(Q[2]),
        .I2(bit_count),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(rst_n_IBUF),
        .O(\rx_data_reg_reg[0] [8]));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \rx_data_reg[2]_i_1 
       (.I0(Q[0]),
        .I1(rst_n_IBUF),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(bit_count),
        .I5(tx_valid_reg__0),
        .O(\rx_data_reg_reg[0] [7]));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \rx_data_reg[3]_i_1 
       (.I0(Q[0]),
        .I1(rst_n_IBUF),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(bit_count),
        .I5(tx_valid_reg__0),
        .O(\rx_data_reg_reg[0] [6]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \rx_data_reg[4]_i_1 
       (.I0(Q[0]),
        .I1(rst_n_IBUF),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(bit_count),
        .I5(tx_valid_reg__0),
        .O(\rx_data_reg_reg[0] [5]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \rx_data_reg[5]_i_1 
       (.I0(Q[0]),
        .I1(rst_n_IBUF),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(bit_count),
        .I5(tx_valid_reg__0),
        .O(\rx_data_reg_reg[0] [4]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \rx_data_reg[6]_i_1 
       (.I0(Q[0]),
        .I1(rst_n_IBUF),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(bit_count),
        .I5(tx_valid_reg__0),
        .O(\rx_data_reg_reg[0] [3]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \rx_data_reg[7]_i_1 
       (.I0(rst_n_IBUF),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(bit_count),
        .I5(tx_valid_reg__0),
        .O(\rx_data_reg_reg[0] [2]));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \rx_data_reg[8]_i_1 
       (.I0(Q[0]),
        .I1(rst_n_IBUF),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(bit_count),
        .I5(tx_valid_reg__0),
        .O(\rx_data_reg_reg[0] [1]));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \rx_data_reg[9]_i_1 
       (.I0(Q[0]),
        .I1(rst_n_IBUF),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(bit_count),
        .I5(tx_valid_reg__0),
        .O(\rx_data_reg_reg[0] [0]));
endmodule
