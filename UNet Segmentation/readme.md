# General description
Here, the trained (slightly modified version of) U-Net employed by COMBImageDL 
together with the necessary scripts to perform the semantic image segmentation 
(foreground vs. background) are provided to be used with new label-free 
live-cell imaging libraries. 

Notably, this is how the test data () have already been segmented. 

## How to perform U-Net based foreground/background segmentation on new data

1. Run the script 'cropImages_UNet.m'

2. Run the script 'run_UNet.m'

3. If steps 1 and 2 are successfully employed for all label-free live-cell 
imaging libraries of your experiment, you are ready to employ COMBImageDL, 
either as a MATLAB or standalone desktop application. See the general 
documentation for details.
