# COMBImageDL (User Interface and changes to be added soon)

COMBImageDL is a deep learning (DL) improved version of our recently developed framework [COMBImage2](https://doi.org/10.1186/s12859-019-2908-0), designed to enable systematic test tube analysis of second- and higher-order drug combinations. More specifically, COMBImageDL is developed to search exhaustively for drug combinations that induce changes in cell viability and time evolving cell culture morphology by means of conventional endpoint synergy analyses jointly with quantitative label-free live-cell imaging. It includes several quality control procedures to eliminate outliers, non-parametric resampling statistics to quantify uncertainty in the results obtained, inter-plate analyses, as well as a data driven methodology to evaluate response patterns and discern higher- from lower- and single-drug effects. It also offers automated plate design for *in vitro* drug combination experiments of any order, which can be used together with programmable acoustic liquid handling technologies. It is based on a standardized and reproducible 384-well format that can be used together with any label-free live-cell imaging instrument. 

COMBImageDL improves the functionality and overall performance of [COMBImage2](https://doi.org/10.1186/s12859-019-2908-0) by means of DL and in particular, a modified version of the convolutional neural network U-Net, which is employed to perform semantic image segmentation of the collected phase-contrast (grayscale) images into foreground and background pixels. COMBImageDL consists in total of 6 experimental-computational modules thoroughly described in our previous work. Briefly,

- **COMBO-Pick** offers automated and randomized 384-well plate design.

- **COMBO-C** offers quantification and visualization of time evolving cell culture growth.

- **COMBO-M** offers quantification and visualization of time evolving changes in cell culture morphology.

- **COMBO-MF** offers quantification and visualization of time evoving apoptotic-like cell counts.

- **COMBO-V** offers endpoint cell viability and synergy analyses of any order. 

- **COMBO-Mine** offers temporal data fusion and mining of all 4 types of response patterns extracted by **COMBO-C**, **COMBO-M**, **COMBO-MF** and **COMBO-V**.

## Exhaustive *in vitro* evaluation of the 9-drug cocktail CUSP9 for treatment of glioblastoma using COMBImageDL

An exhaustive *in vitro* evaluation of the 9-drug cocktail [CUSP9](https://doi.org/10.18632/oncotarget.2408) for treatment of glioblastoma was for the first time designed, performed and analyzed by means of the COMBImageDL framework. More specifically, all 511 plausible subsets of the CUSP9v4 protocol (aprepitant, auranofin, captopril, celecoxib, disulfiram, itraconazole, minocycline, quetiapine, sertraline) were evaluated for the first time as add-on to standard-of-care temozolomide, on a drug resistant glioblastoma cell line (M059K), by combining endpoint cell viability measurements and quantitative label-free live-cell imaging. The experiment was performed in quadruplicate (i.e. 8x384-well plates, > 100GB image data), in order to quantify uncertainty in the results obtained by taking into account the experimental variability. All generated experimental data are freely available at [Mendeley Repo to be added]. Moreover, all 6 aforementioned COMBImageDL modules are freely distributed here, as standalone executables for Windows machines together with documentation and user guides. In this way, users are able to reproduce the results of our exhaustive *in vitro* CUSP9 study and also employ COMBImageDL in other similar studies. 

### Get started

- Download and install the Windows version of [MATLAB R2019b Runtime](https://www.mathworks.com/products/compiler/mcr/index.html).

- Download the COMBImageDL repository on your local machine either manually or via [Git for Windows](https://gitforwindows.org/).

#### Organize downloaded data folders

Once the data from the previous step are all downloaded on your local machine/external hard drive, follow the guidelines below, in order to structure the local data directory in a way that makes the employement of all COMBImageDL modules and the reproduction of the results as smooth as possible.  

The data directory should be set up as shown in the tree structure below. Firstly, create a top level directory called, for example, "\CUSP9". As a second step, transfer the folder "\prototypes" and the files "CUSP9_v4_1_4.txt", "CUSP9_v4_1_9.txt", "CUSP9_v4_5_9.txt", "CUSP9-A BMGReader2019-04-29 10.23.34.log", "M059K_190429_9093.xlsx", "M059K_190429_9094.xlsx", "M059K_190429_9095.xlsx", "M059K_190429_9096.xlsx", "M059K_190429_9097.xlsx", "M059K_190429_9098.xlsx", "M059K_190429_9099.xlsx" and "M059K_190429_9100.xlsx". Finally, create two subfolders "\1-4" and "\5-8" and transfer the folder "\training" as well as the unzipped image library folders "\9093, \9095, \9097, \9099" and "\9094, \9096, \9098, \9100", respectively.

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

#### Run modules

All 6 modules of the COMBImageDL framework are organized in separate sufolders under the folder "\modules" of this GitHub repository. Run them in the suggested order below and follow the steps given in their separate guides. 

##### Experimental module
 **COMBO-Pick**: You can skip this module as it is used in order to generate the randomized 384-well plate layouts to be used together with an in-house software, [Bridge](https://doi.org/10.1177/2211068215598117), to produce the corresponding transfer schemes needed for acoustic liquid dispension in an Echo 550 (Labcyte Inc., Sunnyvale, CA). In particular, the files "M059K_190429_9093.xlsx", "M059K_190429_9094.xlsx", "M059K_190429_9095.xlsx", "M059K_190429_9096.xlsx", "M059K_190429_9097.xlsx", "M059K_190429_9098.xlsx", "M059K_190429_9099.xlsx" and "M059K_190429_9100.xlsx" were generated by COMBO-Pick. See videos below.
 
 
 ###### Infeasible 384-well design
 [![COMBO-Pick-infeasible](http://i3.ytimg.com/vi/QA6ajTvdBkI/maxresdefault.jpg)](https://www.youtube.com/watch?v=QA6ajTvdBkI "COMBO-Pick (infeasible 384-well design)")
 
 ###### Feasible 384-well design
  [![COMBO-Pick-feasible](http://i3.ytimg.com/vi/mE2kzdOEwsI/maxresdefault.jpg)](https://www.youtube.com/watch?v=mE2kzdOEwsI "(feasible 384-well plate design)")
 

##### Computational modules
1. **COMBO-C**: Run this module first separately for each and every replicate plate per experimental batch (i.e. order 1-4 and 5-9) and then, run it per experimental batch to perform inter-plate QC, analyses and visualization. See videos below.


###### Intra-plate analysis
[![COMBO-C-intra](http://i3.ytimg.com/vi/JX28rIzJfzw/maxresdefault.jpg)](https://youtu.be/JX28rIzJfzw "COMBO-C (Intra-plate analysis)")

###### Inter-plate analysis
[![COMBO-C-inter](http://i3.ytimg.com/vi/EFbD_pvY4nY/maxresdefault.jpg)](https://www.youtube.com/watch?v=EFbD_pvY4nY "COMBO-C (Inter-plate analysis)")


2. **COMBO-M**: Run this module first separately for each and every replicate plate per experimental batch (i.e. order 1-4 and 5-9) and then, run it per experimental batch to perform inter-plate analyses and visualization. See videos below.


###### Intra-plate analysis
[![COMBO-M-intra](http://i3.ytimg.com/vi/LVcxnDQj9o0/maxresdefault.jpg)](https://youtu.be/LVcxnDQj9o0 "COMBO-M (Intra-plate analysis)")

###### Inter-plate analysis
[![COMBO-M-inter](http://i3.ytimg.com/vi/sYMuc7GntMc/maxresdefault.jpg)](https://youtu.be/sYMuc7GntMc "COMBO-M (Inter-plate analysis)")


3. **COMBO-MF**: Run this module first separately for each and every replicate plate per experimental batch (i.e. order 1-4 and 5-9) and then, run it per experimental batch to perform inter-plate analyses and visualization. See videos below.


###### Intra-plate analysis (one prototype)
[![COMBO-MF-intra-one](http://i3.ytimg.com/vi/WUIHp9pjPxA/maxresdefault.jpg)](https://youtu.be/WUIHp9pjPxA "COMBO-MF (Intra-plate analysis, one prototype)")

###### Intra-plate analysis (merge multiple prototypes)
[![COMBO-MF-intra-multiple](http://i3.ytimg.com/vi/oyZlHfYEhYQ/maxresdefault.jpg)](https://youtu.be/oyZlHfYEhYQ "COMBO-MF (Intra-plate analysis, merge multiple prototypes)")

###### Inter-plate analysis
[![COMBO-MF-inter](http://i3.ytimg.com/vi/NW-0dqHuelw/maxresdefault.jpg)](https://youtu.be/NW-0dqHuelw "COMBO-MF (Inter-plate analysis)")


4. **COMBO-V**: This module requires only the endpoint cell viability measurements and performs the intra-/inter-plate analyses and visualization at once. See video below.
[![COMBO-V](http://i3.ytimg.com/vi/FTtV8iY26Mo/maxresdefault.jpg)](https://youtu.be/FTtV8iY26Mo "COMBO-V")



5. **COMBO-Mine**: Once the inter-plate analyses are completed by all 4 aforementioned computational modules (**COMBO-C**, **COMBO-M**, **COMBO-MF** and **COMBO-V**), run **COMBO-Mine**. See videos below.
[![COMBO-Mine](http://i3.ytimg.com/vi/N-tf-F_RKnk/maxresdefault.jpg)](https://youtu.be/N-tf-F_RKnk "COMBO-Mine")









