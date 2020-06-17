# General description
Here, the trained (slightly modified version of) U-Net employed by COMBImageDL 
together with the necessary scripts to perform the semantic image segmentation 
(foreground vs. background) are provided to be used with new label-free 
live-cell imaging libraries. 

Notably, this is how the provided test data ([9093](http://dx.doi.org/10.17632/yxc8rykgpw.1),
[9094](http://dx.doi.org/10.17632/psdkp4m5rz.1), [9095](http://dx.doi.org/10.17632/wbywrpz9n9.1),
[9096](http://dx.doi.org/10.17632/4rcgz4b387.1), [9097](http://dx.doi.org/10.17632/kdk277mfh8.1),
[9098](http://dx.doi.org/10.17632/mnsw4ymhrc.1), [9099](http://dx.doi.org/10.17632/dd5dhm768y.1), 
[9100](http://dx.doi.org/10.17632/xnk34rd4jg.1)) have already been segmented. 

## How to perform U-Net based foreground/background segmentation on new data

1. Run the script 'cropImages_UNet.m'

2. Run the script 'run_UNet.m'

3. If steps 1 and 2 are successfully employed for all label-free live-cell 
imaging libraries of your experiment, you are ready to employ COMBImageDL, 
either as a MATLAB or standalone desktop application. See the general 
documentation (on the first page) for details.
