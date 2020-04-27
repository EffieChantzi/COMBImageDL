# COMBO-C
In order to run COMBO-C, follow the instructions below:

1. Right-click on the Windows executable file "COMBO_C.exe" and choose "Run as Administrator".
Alternatively, you can open a windows command prompt as an administrator, navigate to the path where
"COMBO-C.exe" is saved and run the command: 

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
 
 The results (see below) are saved in a particularly dedicated directory under \9093, \9094, \9095, \9096, \9097, \9098, \9099, \9100.
 
 
 ```
 CUSP9
└── 1-4
│    └── 9093
│    │    └── BU                                     # backup folder with image data for plate "9093" 
|    |    |    └── well_1_frame_1.tif
│    │    |    ├── .
│    │    |    ├── .                                 # all image data collected for plate "9093" as .tif files 
│    │    |    ├── .
│    │    |    ├── well_K_frame_M.tif
│    │    |    ├── outliers.eps                      # .eps file showing the quality control/outlier detection
│    │    |    ├── outliers.pdf                      # .pdf file with showing the quality control/outlier detection
│    │    |    └── outliers.txt                      # .txt file with the detected & excluded outliers
│    │    ├── Confluence
│    │    |       └── 9093_Confluence_UNet.mat       # .mat file needed for further processing from other modules
│    │    |       ├── BridgeAnnot_Vis_9093.mat       # .mat file needed for visualization & further processing from other modules
│    │    |       ├── Confluence_M059K_9093.csv      # .csv file with the cell cuture confluence results in the range [0, 1]
│    │    |       ├── Confluence_M059K_9093.eps      # .eps file with cell culture confluence curves (shown  in %)
│    │    |       └── Confluence_M059K_9093.pdf      # .pdf file with cell culture confluence curves (shown  in %)
│    │    ├── untreated                              # folder, containing the first time frame of all wells, needed for quality control
│    │    │      └── well_1_frame_1.tif
│    │    │      ├── well_2_frame_1.tif
│    │    │      ├── .
│    │    │      ├── .                               
│    │    │      ├── .
│    │    │      ├── well_N_frame_1.tif
│    │    ├── well_1_frame_1.tif
│    │    ├── .
│    │    ├── .                                       # all image data collected for plate "9093", after quality control, as .tif files
│    │    ├── .
│    │    └── well_N_frame_M.tif         
│    ├── 9095
│    │    └── BU                                     # backup folder with image data for plate "9095"
|    |    |    └── well_1_frame_1.tif
│    │    |    ├── .
│    │    |    ├── .                                 # all image data collected for plate "9095" as .tif files 
│    │    |    ├── .
│    │    |    ├── well_K_frame_M.tif
│    │    |    ├── outliers.eps                      # .eps file showing the quality control/outlier detection
│    │    |    ├── outliers.pdf                      # .pdf file with showing the quality control/outlier detection
│    │    |    └── outliers.txt                      # .txt file with the detected & excluded outliers
│    │    ├── Confluence
│    │    |       └── 9095_Confluence_UNet.mat       # .mat file needed for further processing from other modules
│    │    |       ├── BridgeAnnot_Vis_9095.mat       # .mat file needed for visualization & further processing from other modules
│    │    |       ├── Confluence_M059K_9095.csv      # .csv file with the cell cuture confluence results in the range [0, 1]
│    │    |       ├── Confluence_M059K_9095.eps      # .eps file with cell culture confluence curves (shown  in %)
│    │    |       └── Confluence_M059K_9095.pdf      # .pdf file with cell culture confluence curves (shown  in %)
│    │    ├── untreated                              # folder, containing the first time frame of all wells, needed for quality control
│    │    │      └── well_1_frame_1.tif
│    │    │      ├── well_2_frame_1.tif
│    │    │      ├── .
│    │    │      ├── .                               
│    │    │      ├── .
│    │    │      ├── well_N_frame_1.tif
│    │    ├── well_1_frame_1.tif
│    │    ├── .
│    │    ├── .                                       # all image data collected for plate "9095", after quality control, as .tif files
│    │    ├── .
│    │    └── well_N_frame_M.tif         
│    ├── 9097
│    │    └── BU                                     # backup folder with image data for plate "9097" 
|    |    |    └── well_1_frame_1.tif
│    │    |    ├── .
│    │    |    ├── .                                 # all image data collected for plate "9097" as .tif files 
│    │    |    ├── .
│    │    |    ├── well_K_frame_M.tif
│    │    |    ├── outliers.eps                      # .eps file showing the quality control/outlier detection
│    │    |    ├── outliers.pdf                      # .pdf file with showing the quality control/outlier detection
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
|    ├── 9099
│    │    └── BU                                     # backup folder with image data for plate "9099" 
|    |    |    └── well_1_frame_1.tif
│    │    |    ├── .
│    │    |    ├── .                                 # all image data collected for plate "9099" as .tif files 
│    │    |    ├── .
│    │    |    ├── well_K_frame_M.tif
│    │    |    ├── outliers.eps                      # .eps file showing the quality control/outlier detection
│    │    |    ├── outliers.pdf                      # .pdf file with showing the quality control/outlier detection
│    │    |    └── outliers.txt                      # .txt file with the detected & excluded outliers
│    │    ├── Confluence
│    │    |       └── 9099_Confluence_UNet.mat       # .mat file needed for further processing from other modules
│    │    |       ├── BridgeAnnot_Vis_9099.mat       # .mat file needed for visualization & further processing from other modules
│    │    |       ├── Confluence_M059K_9099.csv      # .csv file with the cell cuture confluence results in the range [0, 1]
│    │    |       ├── Confluence_M059K_9099.eps      # .eps file with cell culture confluence curves (shown  in %)
│    │    |       └── Confluence_M059K_9099.pdf      # .pdf file with cell culture confluence curves (shown  in %)
│    │    ├── untreated                              # folder, containing the first time frame of all wells, needed for quality control
│    │    │      └── well_1_frame_1.tif
│    │    │      ├── well_2_frame_1.tif
│    │    │      ├── .
│    │    │      ├── .                               
│    │    │      ├── .
│    │    │      ├── well_N_frame_1.tif
│    │    ├── well_1_frame_1.tif
│    │    ├── .
│    │    ├── .                                       # all image data collected for plate "9099", after quality control, as .tif files
│    │    ├── .
│    │    └── well_N_frame_M.tif   
│    └── training
├── 5-8
│    └── 9094
│    │    └── BU                                     # backup folder with image data for plate "9094" 
|    |    |    └── well_1_frame_1.tif
│    │    |    ├── .
│    │    |    ├── .                                 # all image data collected for plate "9094" as .tif files 
│    │    |    ├── .
│    │    |    ├── well_K_frame_M.tif
│    │    |    ├── outliers.eps                      # .eps file showing the quality control/outlier detection
│    │    |    ├── outliers.pdf                      # .pdf file with showing the quality control/outlier detection
│    │    |    └── outliers.txt                      # .txt file with the detected & excluded outliers
│    │    ├── Confluence
│    │    |       └── 9094_Confluence_UNet.mat       # .mat file needed for further processing from other modules
│    │    |       ├── BridgeAnnot_Vis_9094.mat       # .mat file needed for visualization & further processing from other modules
│    │    |       ├── Confluence_M059K_9094.csv      # .csv file with the cell cuture confluence results in the range [0, 1]
│    │    |       ├── Confluence_M059K_9094.eps      # .eps file with cell culture confluence curves (shown  in %)
│    │    |       └── Confluence_M059K_9094.pdf      # .pdf file with cell culture confluence curves (shown  in %)
│    │    ├── untreated                              # folder, containing the first time frame of all wells, needed for quality control
│    │    │      └── well_1_frame_1.tif
│    │    │      ├── well_2_frame_1.tif
│    │    │      ├── .
│    │    │      ├── .                               
│    │    │      ├── .
│    │    │      ├── well_N_frame_1.tif
│    │    ├── well_1_frame_1.tif
│    │    ├── .
│    │    ├── .                                       # all image data collected for plate "9094", after quality control, as .tif files
│    │    ├── .
│    │    └── well_N_frame_M.tif 
│    ├── 9096
│    │    └── BU                                     # backup folder with image data for plate "9096" 
|    |    |    └── well_1_frame_1.tif
│    │    |    ├── .
│    │    |    ├── .                                 # all image data collected for plate "9096" as .tif files 
│    │    |    ├── .
│    │    |    ├── well_K_frame_M.tif
│    │    |    ├── outliers.eps                      # .eps file showing the quality control/outlier detection
│    │    |    ├── outliers.pdf                      # .pdf file with showing the quality control/outlier detection
│    │    |    └── outliers.txt                      # .txt file with the detected & excluded outliers
│    │    ├── Confluence
│    │    |       └── 9096_Confluence_UNet.mat       # .mat file needed for further processing from other modules
│    │    |       ├── BridgeAnnot_Vis_9096.mat       # .mat file needed for visualization & further processing from other modules
│    │    |       ├── Confluence_M059K_9096.csv      # .csv file with the cell cuture confluence results in the range [0, 1]
│    │    |       ├── Confluence_M059K_9096.eps      # .eps file with cell culture confluence curves (shown  in %)
│    │    |       └── Confluence_M059K_9096.pdf      # .pdf file with cell culture confluence curves (shown  in %)
│    │    ├── untreated                              # folder, containing the first time frame of all wells, needed for quality control
│    │    │      └── well_1_frame_1.tif
│    │    │      ├── well_2_frame_1.tif
│    │    │      ├── .
│    │    │      ├── .                               
│    │    │      ├── .
│    │    │      ├── well_N_frame_1.tif
│    │    ├── well_1_frame_1.tif
│    │    ├── .
│    │    ├── .                                       # all image data collected for plate "9096", after quality control, as .tif files
│    │    ├── .
│    │    └── well_N_frame_M.tif 
│    ├── 9098
│    │    └── BU                                     # backup folder with image data for plate "9098" 
|    |    |    └── well_1_frame_1.tif
│    │    |    ├── .
│    │    |    ├── .                                 # all image data collected for plate "9098" as .tif files 
│    │    |    ├── .
│    │    |    ├── well_K_frame_M.tif
│    │    |    ├── outliers.eps                      # .eps file showing the quality control/outlier detection
│    │    |    ├── outliers.pdf                      # .pdf file with showing the quality control/outlier detection
│    │    |    └── outliers.txt                      # .txt file with the detected & excluded outliers
│    │    ├── Confluence
│    │    |       └── 9098_Confluence_UNet.mat       # .mat file needed for further processing from other modules
│    │    |       ├── BridgeAnnot_Vis_9098.mat       # .mat file needed for visualization & further processing from other modules
│    │    |       ├── Confluence_M059K_9098.csv      # .csv file with the cell cuture confluence results in the range [0, 1]
│    │    |       ├── Confluence_M059K_9098.eps      # .eps file with cell culture confluence curves (shown  in %)
│    │    |       └── Confluence_M059K_9098.pdf      # .pdf file with cell culture confluence curves (shown  in %)
│    │    ├── untreated                              # folder, containing the first time frame of all wells, needed for quality control
│    │    │      └── well_1_frame_1.tif
│    │    │      ├── well_2_frame_1.tif
│    │    │      ├── .
│    │    │      ├── .                               
│    │    │      ├── .
│    │    │      ├── well_N_frame_1.tif
│    │    ├── well_1_frame_1.tif
│    │    ├── .
│    │    ├── .                                       # all image data collected for plate "9098", after quality control, as .tif files
│    │    ├── .
│    │    └── well_N_frame_M.tif
|    ├── 9100 
│    │    └── BU                                     # backup folder with image data for plate "9100" 
|    |    |    └── well_1_frame_1.tif
│    │    |    ├── .
│    │    |    ├── .                                 # all image data collected for plate "9100" as .tif files 
│    │    |    ├── .
│    │    |    ├── well_K_frame_M.tif
│    │    |    ├── outliers.eps                      # .eps file showing the quality control/outlier detection
│    │    |    ├── outliers.pdf                      # .pdf file with showing the quality control/outlier detection
│    │    |    └── outliers.txt                      # .txt file with the detected & excluded outliers
│    │    ├── Confluence
│    │    |       └── 9100_Confluence_UNet.mat       # .mat file needed for further processing from other modules
│    │    |       ├── BridgeAnnot_Vis_9100.mat       # .mat file needed for visualization & further processing from other modules
│    │    |       ├── Confluence_M059K_9100.csv      # .csv file with the cell cuture confluence results in the range [0, 1]
│    │    |       ├── Confluence_M059K_9100.eps      # .eps file with cell culture confluence curves (shown  in %)
│    │    |       └── Confluence_M059K_9100.pdf      # .pdf file with cell culture confluence curves (shown  in %)
│    │    ├── untreated                              # folder, containing the first time frame of all wells, needed for quality control
│    │    │      └── well_1_frame_1.tif
│    │    │      ├── well_2_frame_1.tif
│    │    │      ├── .
│    │    │      ├── .                               
│    │    │      ├── .
│    │    │      ├── well_N_frame_1.tif
│    │    ├── well_1_frame_1.tif
│    │    ├── .
│    │    ├── .                                       # all image data collected for plate "9100", after quality control, as .tif files
│    │    ├── .
│    │    └── well_N_frame_M.tif
│    └── training
├── prototypes
├── Results
│     └── COMBO-Pick
│            └── .xlsx files    # here the results from COMBO-Pick are saved
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
  See also [COMBO_C_Intra_Plate_Guide(./COMBO_C_InterPlate.pdf) for a PDF guide including all print out results from the command line.
 
 ![Demo_inter_plate](demo/COMBO_C_InterPlate.gif)
