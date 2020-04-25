# COMBO-Pick
In order to run COMBO-Pick, follow the instructions below:

1. Right-click on the Windows executable file "COMBO_Pick.exe" and choose "Run as Administrator".
Alternatively, you can open a windows command prompt as an administrator, navigate to the path where
"COMBO-Pick.exe" is saved and run the command: 

```
> COMBO_Pick.exe
```

2. The two following short animations show how to deploy COMBO-Pick. In the first case, the user
defined specification file requests the exhaustive CUSP9 experiment, which does not fit in one 384-well
plate and thus, COMBO-Pick suggests an alternative solution by splitting the design in more than one plates.
In the second case, the user-defined specification file is adjusted to comply with the alternative solution
suggested by COMBO-Pick and is successfully deployed. 

 ## Split infeasible design
 
 ![Demo_invalid](demo/COMBO_Pick_split_experiment.gif)
 
 
 ## Employ feasible design
 
 ![Demo_valid](demo/COMBO_Pick.gif)
 
 The results (see below) are saved as .xlsx files under \Results\COMBO-Mine in the data directory that you set up in the begining. 
 
 ```
 CUSP9
└── 1-4
│    └── 9093
│    ├── 9095
│    ├── 9097
|    ├── 9099
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
│            └── .xlsx files    # here the results from COMBO-Pick are saved
│
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




