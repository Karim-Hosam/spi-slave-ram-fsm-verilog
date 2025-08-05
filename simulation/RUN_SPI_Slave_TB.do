vlib work
vlog ../src/SPI_Wrapper.v ../src/SPI_Slave.v ../src/Single_Port_Sync_RAM.v ../src/Up_Counter.v ../tb/SPI_Wrapper_tb.v ../tb/SPI_Slave_tb.v ../tb/Single_Port_Sync_RAM_tb.v
vsim -voptargs=+acc work.SPI_Slave_tb
add wave -position insertpoint  \
sim:/SPI_Slave_tb/clk \
sim:/SPI_Slave_tb/rst_n \
sim:/SPI_Slave_tb/SS_n \
sim:/SPI_Slave_tb/DUT/bit_count \
sim:/SPI_Slave_tb/MOSI \
sim:/SPI_Slave_tb/rx_valid \
sim:/SPI_Slave_tb/DUT/rx_data_reg \
sim:/SPI_Slave_tb/rx_data \
sim:/SPI_Slave_tb/tx_valid \
sim:/SPI_Slave_tb/tx_data \
sim:/SPI_Slave_tb/MISO \
sim:/SPI_Slave_tb/DUT/cs \
sim:/SPI_Slave_tb/DUT/ns 
run -all
