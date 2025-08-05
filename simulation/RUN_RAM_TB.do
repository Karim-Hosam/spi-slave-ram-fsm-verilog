vlib work
vlog ../src/SPI_Wrapper.v ../src/SPI_Slave.v ../src/Single_Port_Sync_RAM.v ../src/Up_Counter.v ../tb/SPI_Wrapper_tb.v ../tb/SPI_Slave_tb.v ../tb/Single_Port_Sync_RAM_tb.v
vsim -voptargs=+acc work.Single_Port_Sync_RAM_tb
add wave -position insertpoint  \
sim:/Single_Port_Sync_RAM_tb/clk \
sim:/Single_Port_Sync_RAM_tb/rst_n \
sim:/Single_Port_Sync_RAM_tb/rx_valid \
sim:/Single_Port_Sync_RAM_tb/din \
sim:/Single_Port_Sync_RAM_tb/tx_valid \
sim:/Single_Port_Sync_RAM_tb/dout \
sim:/Single_Port_Sync_RAM_tb/DUT/mem
run -all
