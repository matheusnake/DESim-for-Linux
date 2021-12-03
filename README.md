# DESim for Linux

## 1 Introduction
The DESim application provides a graphical user interface (GUI) that represents some of the features of a DE1-SoC board. This GUI serves as a "front end" for the ModelSim simulator. Using the DESim GUI you can invoke both the ModelSim Verilog compiler and simulator. Inputs to the ModelSim simulator can be provided by clicking on features in the DESim GUI, which also shows results produced by the simulator on displays that look like the ones on a DE1-SoC board.

The DESim tool has four parts:
1) Documentation in the form of an installation guide, and a user tutorial. 
2) The frontend graphical user interface
3) The backend simulator interface
4) Various demos showcasing the different capabilities of the tool

The DESim tool requires the ModelSim HDL simuator. Preferably, one of the ModelSim-Intel FPGA editions, which has the Intel FPGA IP Core simulation models built-in.

## 2 Installation
1. DESim requires ModelSim (Intel FPGA starter edition), which is available at https://fpgasoftware.intel.com/20.1.1/?edition=lite&platform=linux. Note: going to individual files tabs will allow you to download Modelsim separately from the Quartus Prime software.

2. Navigate to the DESim URL: https://github.com/matheusnake/DESim-for-Linux/releases 

3. Execute the scipt "run.sh" to run DESim.   

## 3 Using the DESim software

1. Read and follow the steps provided in the DESim_tutorial.pdf document.   

## 4 Using the source code

Some files contain my PC directories. If you want to compile them, change the directories found in the following scripts:

    1. backend/make (Modelsim path)
    2. frontend/build_release.sh (JDK/JavaFX path)
