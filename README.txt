SPI Slave RAM FSM Verilog Project - Folder Structure

This project contains a complete SPI slave implementation with RAM and FSM in Verilog.

Folder Structure:

├── src/                          ← Verilog files: design + RAM + FSM
│
├── tb/                           ← Testbench files
│
├── doc/                          ← Documentation files
│   ├── Project2_Report.pdf       ← Final project report
│   ├── waveform_snippets/        ← QuestaSim waveform screenshots
│   ├── synthesis_snippets/       ← Vivado synthesis screenshots/reports
│   ├── implementation_snippets/  ← Implementation/bitstream screenshots
│   └── lint_snippets/            ← QuestaLint screenshots
│
├── vivado/                       ← Complete Vivado project
│   ├── constraints/              ← .xdc constraint files
│   ├── synthesis/                ← Synthesis reports (for each encoding)
│   ├── implementation/           ← Implementation reports
│   ├── debug_core/               ← ILA or Logic Analyzer files
│   └── vivado_project.xpr        ← Vivado project file
│
├── simulation/                   ← QuestaSim project
│   ├── spi_slave_tb.do           ← Simulation .do file
│   └── spi_slave_tb.questa       ← QuestaSim project file
│
├── questalint/                   ← Lint project
│   ├── spi_slave_lint.do         ← Lint script
│   └── lint_results/             ← Lint logs or screenshots
│
├── netlist/                      ← Vivado netlist (.edif or .v)
│
├── bitstream/                    ← Final .bit file from Vivado
│   └── spi_slave.bit
│
└── README.txt                    ← This file

Usage:
1. Open vivado/vivado_project.xpr in Vivado for synthesis and implementation
2. Use simulation/ for QuestaSim verification
3. Run questalint/ for code quality checks
4. Check doc/ for all documentation and screenshots 