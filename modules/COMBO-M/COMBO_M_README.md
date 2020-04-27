# COMBO-M
In order to run COMBO-M, follow the instructions below:

1. Right-click on the Windows executable file "COMBO_M.exe" and choose "Run as Administrator".
Alternatively, you can open a windows command prompt as an administrator, navigate to the path where
"COMBO_M.exe" is saved and run the command: 

```
> COMBO_M.exe
```

2. The next two short animations (follow along) show how to deploy COMBO-M using data from the exhaustive CUSP9 
study. 

In particular, the first animation shows how to perform intra-plate analysis, meaning quantification and
visualization of time evolving changes in cell culture morphology using the phase-contrast live-cell imaging 
data collected for a particular (replicate) plate.

The second animation shows how to perform inter-plate quality control, analysis and visualization, if the
experiment is performed in more than one replicate plates.

## Intra-plate analysis
 See also [COMBO_M_Intra_Plate_Guide](./COMBO_M_IntraPlate.pdf) for a PDF guide including all print out results from the command line. 
 
 ![Demo_intra_plate](demo/COMBO_M_IntraPlate.gif)
 
 The intra-plate analysis  results for plate "9094" shown in the animation are organized in separate directories and folders under the main data directory that was set up in the beginning. See below:
 
  ```
 CUSP9
└── 1-4
│    └── 9093  
│    ├── 9095
│    ├── 9097
│    └── training
├── 5-8
│    └── 9094
│    │    └── BU                               
│    │    ├── Confluence
│    │    ├── Morphology
│    │    │       └── PHHC
│    │    |       |     └── graphics
│    │    |       |     |      └── Change_Morphology_M059K_9094_PHHC_Run01_r025_b0125.eps   # .eps file with temporal curves of changes in cell culture morphology (shown in %) for parameter pair no. 1
│    │    |       |     |      ├── Change_Morphology_M059K_9094_PHHC_Run01_r025_b0125.pdf   # as above but in .pdf format
│    │    |       |     |      ├── Change_Morphology_M059K_9094_PHHC_Run02_r025_b05.eps     # .eps file with temporal curves of changes in cell culture morphology (shown in %) for parameter pair no. 2
│    │    |       |     |      ├── Change_Morphology_M059K_9094_PHHC_Run02_r025_b05.pdf     # as above but in .pdf format
│    │    |       |     |      ├── Change_Morphology_M059K_9094_PHHC_Run03_r05_b0125.eps    # .eps file with temporal curves of changes in cell culture morphology (shown in %) for parameter pair no. 3
│    │    |       |     |      ├── Change_Morphology_M059K_9094_PHHC_Run03_r05_b0125.pdf    # as above but in .pdf format
│    │    |       |     |      ├── Change_Morphology_M059K_9094_PHHC_Run04_r05_b05.eps      # .eps file with temporal curves of changes in cell culture morphology (shown in %) for parameter pair no. 4
│    │    |       |     |      ├── Change_Morphology_M059K_9094_PHHC_Run04_r05_b05.pdf      # as above but in .pdf format
│    │    |       |     |      ├── detections_over_time.eps                                 # .eps file showing the number of intersting morphologically detections over time for all different parameter pair values
│    │    |       |     |      ├── Run01_r025_b0125_Norms.eps                               # .eps file with histogram showing the hierarchical pixel histogram deviations between untreated and drug-treated wells for paramenter pair no. 1
│    │    |       |     |      ├── Run01_r025_b0125_Norms.pdf                               # as above but in .pdf format
│    │    |       |     |      ├── Run02_r025_b05_Norms.eps                                 # .eps file with histogram showing the hierarchical pixel histogram deviations between untreated and drug-treated wells for paramenter pair no. 2
│    │    |       |     |      ├── Run02_r025_b05_Norms.pdf                                 # as above but in .pdf format
│    │    |       |     |      ├── Run03_r05_b0125_Norms.eps                                # .eps file with histogram showing the hierarchical pixel histogram deviations between untreated and drug-treated wells for paramenter pair no. 3
│    │    |       |     |      ├── Run03_r05_b0125_Norms.pdf                                # as above but in .pdf format
│    │    |       |     |      ├── Run04_r05_b05_Norms.eps                                  # .eps file with histogram showing the hierarchical pixel histogram deviations between untreated and drug-treated wells for paramenter pair no. 4
│    │    |       |     |      └── Run04_r05_b05_Norms.pdf                                  # as above but in .pdf format
│    │    |       |     ├── txt
│    │    |       |     |    └── parameter_optimization.txt                                 # text file with the print out results of the parameter optimization per time point
│    │    |       |     |      ├── Run01_r025_b0125_All_DTEM_Norm_t_start_1.txt
│    │    |       |     |      ├── .
│    │    |       |     |      ├── .
│    │    |       |     |      ├── Run01_r025_b0125_All_DTEM_Norm_t_start_22.txt
│    │    |       |     |      ├── Run02_r025_b05_All_DTEM_Norm_t_start_1.txt
│    │    |       |     |      ├── .
│    │    |       |     |      ├── .                                                        # text files with results that are used for visualization
│    │    |       |     |      ├── Run02_r025_b05_All_DTEM_Norm_t_start_22.txt
│    │    |       |     |      ├── Run03_r05_b0125_All_DTEM_Norm_t_start_1.txt
│    │    |       |     |      ├── .
│    │    |       |     |      ├── .
│    │    |       |     |      ├── Run03_r05_b0125_All_DTEM_Norm_t_start_22.txt
│    │    |       |     |      ├── Run04_r05_b05_All_DTEM_Norm_t_start_1.txt
│    │    |       |     |      ├── .
│    │    |       |     |      ├── .
│    │    |       |     |      ├── Run04_r05_b05_All_DTEM_Norm_t_start_22.txt
│    │    |       |     ├── 9094_PHHC_Run01_r025_b0125.mat                                  # .mat file needed for further processing from other modules (parameter pair no. 1)
│    │    |       |     ├── 9094_PHHC_Run02_r025_b05.mat                                    # as above (parameter pair no. 2)
│    │    |       |     ├── 9094_PHHC_Run03_r05_b0125.mat                                   # as above (parameter pair no. 3)
│    │    |       |     ├── 9094_PHHC_Run04_r05_b05.mat                                     # as above (parameter pair no. 4)
│    │    |       |     ├── BridgeAnnot_Vis_9094_PHHC_Run01_r025_b0125.mat                  # .mat file needed for further processing and visualization from other modules (parameter pair no. 1)
│    │    |       |     ├── BridgeAnnot_Vis_9094_PHHC_Run02_r025_b05.mat                    # as above (parameter pair no. 2)
│    │    |       |     ├── BridgeAnnot_Vis_9094_PHHC_Run03_r05_b0125.mat                   # as above (parameter pair no. 3)
│    │    |       |     ├── BridgeAnnot_Vis_9094_PHHC_Run04_r05_b05.mat                     # as above (parameter pair no. 4)
│    │    |       |     ├── Change_Morphology_M059K_9094_PHHC_Run01_r025_b0125.csv          # .csv file with time evolving changes in cell culture morphology in the range [0, 1] (parameter pair no. 1)
│    │    |       |     ├── Change_Morphology_M059K_9094_PHHC_Run02_r025_b05.csv            # as above (parameter pair no. 2)
│    │    |       |     ├── Change_Morphology_M059K_9094_PHHC_Run03_r05_b0125.csv           # as above (parameter pair no. 3)
│    │    |       |     └── Change_Morphology_M059K_9094_PHHC_Run04_r05_b05.csv             # as above (parameter pair no. 4)
│    │    ├── untreated                      
│    │    ├── well_1_frame_1.tif
│    │    ├── .
│    │    ├── .                                # all image data collected for plate "9097", after quality control, as .tif files
│    │    ├── .
│    │    └── well_N_frame_M.tif    
│    ├── 9096
│    ├── 9098
|    ├── 9100 
│    └── training
├── prototypes
├── Results
│     └── COMBO-Pick
├── CUSP9_v4_1_4.txt
├── CUSP9_v4_1_9.txt
├── CUSP9_v4_5_9.txt
├── CUSP9-A BMGReader2019-04-29 10.23.34.log
├── M059K_190429_9093.xlsx
├── M059K_190429_9094.xlsx
├── M059K_190429_9095.xlsx
├── M059K_190429_9096.xlsx
├── M059K_190429_9097.xlsx
├── M059K_190429_9098.xlsx
├── M059K_190429_9099.xlsx
└── M059K_190429_9100.xlsx
```
