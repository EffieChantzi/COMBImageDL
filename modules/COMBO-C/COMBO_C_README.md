# COMBO-C
In order to run COMBO-C, follow the instructions below:

1. Right-click on the Windows executable file "COMBO_C.exe" and choose "Run as Administrator".
Alternatively, you can open a windows command prompt as an administrator, navigate to the path where
"COMBO_C.exe" is saved and run the command: 

```
> COMBO_C.exe
```

2. The next two short animations (follow along) show how to deploy COMBO-C using data from the exhaustive CUSP9 
study. In particular, the first animation shows how to perform intra-plate analysis, meaning time evolving cell 
growth/confluence quantification and visualization using the phase-contrast live-cell imaging data from one
replicate plate. The second animation shows how to perform inter-plate quality control, analysis and visualization,
meaning merging all replicate results obtained from running the intra-plate analysis from above for all replicate
plates. 

## Intra-plate analysis
 See also [COMBO_C_Intra_Plate_Guide](./COMBO_C_IntraPlate.pdf) for a PDF guide including all print out results from the command line. 
 
 ![Demo_intra_plate](demo/COMBO_C_IntraPlate.gif)
 
 The intra-plate analysis  results for plate "9097" shown in the animation are organized in separate directories and folders under the main data directory that you set up in the beginning. See below:
 
 ```
 CUSP9
└── 1-4
│    └── 9093  
│    ├── 9095
│    ├── 9097
│    │    └── BU                                     # backup folder with image data for plate "9097" 
|    |    |    └── well_1_frame_1.tif
│    │    |    ├── .
│    │    |    ├── .                                 # all image data collected for plate "9097" as .tif files 
│    │    |    ├── .
│    │    |    ├── well_K_frame_M.tif
│    │    |    ├── outliers.eps                      # .eps file showing the quality control/outlier detection
│    │    |    ├── outliers.pdf                      # .pdf file showing the quality control/outlier detection
│    │    |    └── outliers.txt                      # .txt file with the detected & excluded outliers
│    │    ├── Confluence
│    │    |       └── 9097_Confluence_UNet.mat       # .mat file needed for further processing from other modules
│    │    |       ├── BridgeAnnot_Vis_9097.mat       # .mat file needed for visualization & further processing from other modules
│    │    |       ├── Confluence_M059K_9097.csv      # .csv file with the cell cuture confluence results in the range [0, 1]
│    │    |       ├── Confluence_M059K_9097.eps      # .eps file with cell culture confluence curves (shown  in %)
│    │    |       └── Confluence_M059K_9097.pdf      # .pdf file with cell culture confluence curves (shown  in %)
│    │    ├── untreated                              # folder, containing the first time frame of all wells, needed for quality control
│    │    │      └── well_1_frame_1.tif
│    │    │      ├── well_2_frame_1.tif
│    │    │      ├── .
│    │    │      ├── .                               
│    │    │      ├── .
│    │    │      ├── well_N_frame_1.tif
│    │    ├── well_1_frame_1.tif
│    │    ├── .
│    │    ├── .                                       # all image data collected for plate "9097", after quality control, as .tif files
│    │    ├── .
│    │    └── well_N_frame_M.tif    
│    └── training
├── 5-8
│    └── 9094
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

 
 ## Inter-plate analysis
  See also [COMBO_C_Intra_Plate_Guide](./COMBO_C_InterPlate.pdf) for a PDF guide including all print out results from the command line.
 
 ![Demo_inter_plate](demo/COMBO_C_InterPlate.gif)
 
 The inter-plate analysis results are saved under the main data directory that was set up in the begining. See below:
 
 ```
 CUSP9
└── 1-4
│    └── 9093  
│    ├── 9095
│    ├── 9097
│    └── training
├── 5-8
│    └── 9094
│    ├── 9096
│    ├── 9098
|    ├── 9100 
│    └── training
├── prototypes
├── Results
│     └── COMBO-Pick
│     ├── COMBO-C
│     │     └── Confluence_M059K_9093_9095_9097_9099.eps   # .eps file with median cell culture confluence curves (shown  in %)
│     │     ├── Confluence_M059K_9093_9095_9097_9099.pdf   # .pdf file with median cell culture confluence curves (shown  in %)
│     │     ├── Confluence_M059K_9093_9095_9097_9099_All_Replicates.eps  # .eps file with cell culture confluence curves (shown  in %) of all inter-plate replicates in ascending order of inter-plate variability
│     │     ├── Confluence_M059K_9093_9095_9097_9099_All_Replicates.pdf
│     │     ├── Confluence_M059K_190429_9093_9095_9097_9099.csv
│     │     ├── Confluence_Untreated_9093_9095_9097_9099.eps
│     │     ├── Confluence_Untreated_9093_9095_9097_9099.pdf
│     │     ├── resampling_COMBO_C_9093_9095_9097_9099.eps
│     │     └── resampling_COMBO_C_9093_9095_9097_9099.pdf
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
 
 
 
 
 
