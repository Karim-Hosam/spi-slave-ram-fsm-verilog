vlib work
vlog ../src/SPI_Wrapper.v ../src/SPI_Slave.v ../src/Single_Port_Sync_RAM.v ../src/Up_Counter.v ../tb/SPI_Wrapper_tb.v ../tb/SPI_Slave_tb.v ../tb/Single_Port_Sync_RAM_tb.v
vsim -voptargs=+acc work.SPI_Wrapper_tb
run -all