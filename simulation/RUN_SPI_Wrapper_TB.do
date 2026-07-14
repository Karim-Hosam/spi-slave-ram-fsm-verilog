vlib work
vlog ../src/SPI_Wrapper.v ../src/SPI_Slave.v ../src/Single_Port_Sync_RAM.v ../src/Up_Counter.v ../tb/SPI_Wrapper_tb.v
vsim -voptargs=+acc work.SPI_Wrapper_tb

add wave -position insertpoint  \
sim:/SPI_Wrapper_tb/clk \
sim:/SPI_Wrapper_tb/rst_n \
sim:/SPI_Wrapper_tb/SS_n \
sim:/SPI_Wrapper_tb/DUT/spi_slave_inst/cs \
sim:/SPI_Wrapper_tb/DUT/spi_slave_inst/ns \
sim:/SPI_Wrapper_tb/DUT/spi_slave_inst/bit_count \
sim:/SPI_Wrapper_tb/MOSI \
sim:/SPI_Wrapper_tb/DUT/spi_slave_inst/rx_data_reg \
sim:/SPI_Wrapper_tb/DUT/spi_slave_inst/rx_data \
sim:/SPI_Wrapper_tb/DUT/spi_slave_inst/rx_valid \
sim:/SPI_Wrapper_tb/DUT/ram_inst/wr_addr \
sim:/SPI_Wrapper_tb/DUT/ram_inst/rd_addr \
sim:/SPI_Wrapper_tb/DUT/ram_inst/dout \
sim:/SPI_Wrapper_tb/DUT/spi_slave_inst/tx_valid \
sim:/SPI_Wrapper_tb/DUT/spi_slave_inst/tx_data \
sim:/SPI_Wrapper_tb/DUT/spi_slave_inst/rd_addr_Done \
sim:/SPI_Wrapper_tb/MISO \
sim:/SPI_Wrapper_tb/DUT/ram_inst/mem 

run -all