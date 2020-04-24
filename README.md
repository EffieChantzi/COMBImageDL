# COMBImageDL

COMBImageDL is a deep learning (DL) improved version of our recently developed framework COMBImage2 (https://doi.org/10.1186/s12859-019-2908-0), designed to enable systematic test tube analysis of second- and higher-order drug combinations. More specifically, COMBImageDL is developed to search exhaustively for drug combinations that induce changes in cell viability and time evolving cell culture morphology by means of conventional endpoint synergy analyses jointly with quantitative label-free live-cell imaging. It includes several quality control procedures to eliminate outliers, non-parametric resampling statistics to quantify uncertainty in the results obtained, inter-plate analyses, as well as a data driven methodology to evaluate response patterns and discern higher- from lower- and single-drug effects. It also offers automated plate design for *in vitro* drug combination experiments of any order, which can be used together with programmable acoustic liquid handling technologies. It is based on a standardized and reproducible 384-well format that can be used together with any label-free live-cell imaging instrument. 

COMBImageDL improves the functionality and overall performance of COMBImage2 (https://doi.org/10.1186/s12859-019-2908-0) by means of DL and in particular, a modified version of the convolutional neural network U-Net, which is employed to perform semantic image segmentation of the phase-contrast (grayscale) images into foreground and background pixels. COMBImageDL consists in total of 6 experimental-computational modules thoroughly described in our previous work (https://doi.org/10.1186/s12859-019-2908-0). Briefly,

- **COMBO-Pick** offers automated and randomized 384-well plate design.

- **COMBO-C** offers quantification and visualization of time evolving cell culture growth.

- **COMBO-M** offers quantification and visualization of time evolving changes in cell culture morphology.

- **COMBO-MF** offers quantification and visualization of time evoving apoptotic-like cell counts.

- **COMBO-V** offers endpoint cell viability and synergy analyses of any order. 

- **COMBO-Mine** offers temporal data fusion and mining of all 4 types of response patterns extracted by **COMBO-C**, **COMBO-M**, **COMBO-MF** and **COMBO-V**.



