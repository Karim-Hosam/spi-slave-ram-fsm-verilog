var qlcDesignQuality = "99.8";
var overallQualityImpacted = "0";
var moduleQuality = {
  "SPI_Slave": {
    "Nomenclature Style": 100.0,
    "Rtl Design Style": 99.8,
    "Simulation": 100,
    "Implementation": 100.0,
    "Score": 99.9,
    "Error Count": 0,
    "Warning Count": 1,
    "Info Count": 1,
    "QualityImpacted": 0
  },
  "SPI_Slave_with_Ram": {
    "Nomenclature Style": 100.0,
    "Rtl Design Style": 100.0,
    "Simulation": 100,
    "Implementation": 100.0,
    "Score": 100.0,
    "Error Count": 0,
    "Warning Count": 0,
    "Info Count": 2,
    "QualityImpacted": 0
  },
  "up_counter": {
    "Nomenclature Style": 100.0,
    "Rtl Design Style": 100.0,
    "Simulation": 100,
    "Implementation": 99.8,
    "Score": 99.9,
    "Error Count": 0,
    "Warning Count": 1,
    "Info Count": 0,
    "QualityImpacted": 0
  }
};
var fileQuality = {
  "0": {
    "Nomenclature Style": 100.0,
    "Rtl Design Style": 100.0,
    "Simulation": 100,
    "Implementation": 99.8,
    "Score": 99.9,
    "Error Count": 0,
    "Warning Count": 1,
    "Info Count": 0,
    "QualityImpacted": 0
  },
  "1": {
    "Nomenclature Style": 100.0,
    "Rtl Design Style": 99.8,
    "Simulation": 100,
    "Implementation": 100.0,
    "Score": 99.9,
    "Error Count": 0,
    "Warning Count": 1,
    "Info Count": 1,
    "QualityImpacted": 0
  },
  "2": {
    "Nomenclature Style": 100.0,
    "Rtl Design Style": 100.0,
    "Simulation": 100,
    "Implementation": 100.0,
    "Score": 100.0,
    "Error Count": 0,
    "Warning Count": 0,
    "Info Count": 2,
    "QualityImpacted": 0
  }
};
var categoryQuality = {
    "Implementation": 99.8,
    "Rtl Design Style": 99.8,
    "Nomenclature Style": 100.0,
    "Simulation": 100.0
};
var checksEnabledPercentage = {
  "Implementation": {
    "Enabled Checks": 139,
    "Disabled Checks": 30,
    "Percentage": 82
  },
  "Rtl Design Style": {
    "Enabled Checks": 178,
    "Disabled Checks": 81,
    "Percentage": 68
  },
  "Nomenclature Style": {
    "Enabled Checks": 6,
    "Disabled Checks": 40,
    "Percentage": 13
  },
  "Simulation": {
    "Enabled Checks": 39,
    "Disabled Checks": 7,
    "Percentage": 84
  }
};
var masterCategoryMap = {
    "Nomenclature Style": [
        "Nomenclature Style"
    ],
    "Rtl Design Style": [
        "Rtl Design Style"
    ],
    "Simulation": [
        "Simulation",
        "Testbench"
    ],
    "Implementation": [
        "Synthesis",
        "Connectivity",
        "Clock",
        "Reset"
    ]
};
