
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%     Copyright (C) 2020  Efthymia Chantzi      %%
%%        GNU General Public license v3          %%
%%                    20-06-17                   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This script crops the original label-free live-cell images into 4    %
% separate subimages with dimensions 400*492, in order to be processed %
% by the trained U-Net provided here ('net.mat').                      %
%                                                                      %
% Run this script and select the corresponding label-free live-cell    %
% image library. Once the script is completed, each original image is  %
% split into 4 smaller (400*492 each) subimages named as:              %
% <original_filename_number>, where number = {1, 2, 3, 4} for the top  %
% left, top right, bottom left and bottom right part of the original   %
% image, respectively. Thus, if the original library has 100 images in %
% total, after running this script there will be 400 subimages, which  %
% will be valid inputs to the trained, slightly modified version of    %
% U-Net provided here. See script 'run_UNet' for more details.         %
%                                                                      %
% This script requires that the dimensions of the original images are  %
% at least 1038x1312. For different dimensions, you have to modify the %
% the code and in particular, lines 59, 64, 69, 74.                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc;
clear;
close all;

fprintf('\nCopyright (C) Efthymia Chantzi\n GNU GENERAL PUBLIC LICENSE v3');
fprintf('\nComputational Medicine, Dept. of Medical Sciences');
fprintf('\nSignals & Systems, Dept. of Electrical Engineering');
fprintf('\nUppsala University, June 2020\n');

fprintf('\n--------------------------------------- Cropping of images for U-Net Initiated  ---------------------------------------\n');


basicDir = pwd;

%% Request from user directory with the main video collection folder
targetDir = '';
while (isempty(targetDir))

    targetDir = uigetdir(basicDir, 'Import the live-cell imaging library');

end 
fprintf('\nLive-cell imaging library: %s\n', targetDir);

IDS = imageDatastore(targetDir);
N_IDS = numpartitions(IDS);

cd(targetDir);
time_start = tic;
for i = 1 : N_IDS
    
    fprintf('\n--- Image %d out of %d', i, N_IDS);
    [I, I_info] = readimage(IDS, i);
    [path, name, ext] = fileparts(I_info.Filename);
    
    I_tmp = I(120 : 519, 201 : 696, 1);
    name_tmp = strcat(name, '_1');
    filename_tmp = strcat(name_tmp, ext);
    imwrite(I_tmp, filename_tmp);
    
    I_tmp = I(120 : 519, 697 : 1192, 1);
    name_tmp = strcat(name, '_2');
    filename_tmp = strcat(name_tmp, ext);
    imwrite(I_tmp, filename_tmp);
    
    I_tmp = I(520 : 919, 201 : 696, 1);
    name_tmp = strcat(name, '_3');
    filename_tmp = strcat(name_tmp, ext);
    imwrite(I_tmp, filename_tmp);
    
    I_tmp = I(520 : 919, 697 : 1192, 1);
    name_tmp = strcat(name, '_4');
    filename_tmp = strcat(name_tmp, ext);
    
    imwrite(I_tmp, filename_tmp);
    delete(I_info.Filename);
    
end
time_end = toc(time_start);
t = datevec(time_end./(60*60*24));
fprintf('\n\nTime elapsed: %.2f (hrs) %.2f (min) %.2f (sec)\n\n\n', t(4), t(5), t(6));
cd(basicDir);

BeepSound(1);

fprintf('\n--------------------------------------- Cropping of images for U-Net Completed  ---------------------------------------\n');

