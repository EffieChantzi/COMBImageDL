
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%     Copyright (C) 2020  Efthymia Chantzi      %%
%%        GNU General Public license v3          %%
%%                    20-06-17                   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This script performs the semantic segmentation of the cropped images %
% (after running 'cropImages_UNet.m') into foreground and background   %
% by employing a slightly modified trained version of UNet provided    %
% here as 'net.mat'.                                                  %
%                                                                      %
% Run this script and select the cropped label-free live-cell imaging  %
% library generated by previously running 'cropImages_UNet.m'. Once    %
% completed, all 4 400*496 subimages per original image are segmented  %
% and stitched back into one 800*992 image. The original grayscale     %
% image is stored in the 1st/2nd channel, while the binary segmentation%
% mask is stored in the 3rd channel, with white (1) and black (0) being%
% the foreground and background pixels, respectively.                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc;
clear; 
close all;

fprintf('\nCopyright (C) Efthymia Chantzi\n GNU GENERAL PUBLIC LICENSE v3');
fprintf('\nComputational Medicine, Dept. of Medical Sciences');
fprintf('\nSignals & Systems, Dept. of Electrical Engineering');
fprintf('\nUppsala University, June 2020\n');

fprintf('\n--------------------------------------- U-Net Segmentation Initiated  ---------------------------------------\n');


basicDir = pwd;
load 'net.mat';

%% Request from user directory with UNet video collection folder (subimages/cropped images)
targetDir = '';
while (isempty(targetDir))

    targetDir = uigetdir(basicDir, 'Import the cropped live-cell imaging library for U-Net');

end 
fprintf('\nLive-cell imaging library for U-Net: %s\n', targetDir);
IDS = imageDatastore(targetDir);
N_IDS_UNet = numpartitions(IDS);

%% Perform semantic segmentation on GPU
semantic_seg_dir = fullfile(pwd, 'semanticseg');
mkdir(semantic_seg_dir);

time_start = tic;
OutKVStore = semanticseg(IDS, net, 'WriteLocation', 'semanticseg', 'MiniBatchSize', 30, 'ExecutionEnvironment', 'auto');
time_end = toc(time_start);
t = datevec(time_end./(60*60*24));
fprintf('\n Time elapsed for semantic segmentation: %.2f (hrs) %.2f (min) %.2f (sec)\n\n\n', t(4), t(5), t(6));

time_start = tic;
result = readall(OutKVStore);
rmdir('semanticseg', 's');
result = cellfun(@(x) x == 'foreground', result, 'UniformOutput', false); % convert to logical from categorical
result = cellfun(@(x) medfilt2(x, [9 9], 'symmetric'), result, 'UniformOutput', false); % median filtering to segmented subimages
time_end = toc(time_start);
t = datevec(time_end./(60*60*24));
fprintf('\n Time elapsed for post-processing of semantic segmentation: %.2f (hrs) %.2f (min) %.2f (sec)\n\n\n', t(4), t(5), t(6));

subimage_ind = 1 : 4 : N_IDS_UNet;
N_IDS = N_IDS_UNet/4;
cd(targetDir);
time_start = tic;
for i = 1 : N_IDS
    
    fprintf('\n--- Image %d out of %d', i, N_IDS);
    
    I_full = [double(readimage(IDS, subimage_ind(i))) double(readimage(IDS, subimage_ind(i) + 1)) ; ...
              double(readimage(IDS, subimage_ind(i) + 2)) double(readimage(IDS, subimage_ind(i) + 3))];
    I_full = I_full/max(I_full(:));    
    
    tmp = result(subimage_ind(i) : subimage_ind(i) + 3, 1);
    I_mask = [tmp{1} tmp{2} ; tmp{3} tmp{4}];
    
    % Save the original full image in the 1st and 2nd channel, as well as
    % the binary mask in the 3rd channer
    I = zeros(800, 992, 3);
    I(:, :, 1) = I_full;
    I(:, :, 2) = I_full;
    I(:, :, 3) = I_mask;

    [~, I_name, ext] = fileparts(IDS.Files{subimage_ind(i)});
    I_name = strsplit(I_name, '_');
    I_name = strjoin(I_name(1 : end - 1), '_');
    imwrite(I, strcat(I_name, ext));           % write on disk the original full and segmented image
    
    
    % Delete all 4 smaller subimages
    [~, I_name, ~] = fileparts(IDS.Files{subimage_ind(i)});
    delete(strcat(I_name, ext));
    [~, I_name, ~] = fileparts(IDS.Files{subimage_ind(i) + 1});
    delete(strcat(I_name, ext));
    [~, I_name, ~] = fileparts(IDS.Files{subimage_ind(i) + 2});
    delete(strcat(I_name, ext));
    [~, I_name, ~] = fileparts(IDS.Files{subimage_ind(i) + 3});
    delete(strcat(I_name, ext));
    
end
time_end = toc(time_start);
t = datevec(time_end./(60*60*24));
fprintf('\n\n Time elapsed for storing original images and segmentation masks: %.2f (hrs) %.2f (min) %.2f (sec)\n\n\n', t(4), t(5), t(6));
cd(basicDir);

BeepSound(1);

fprintf('\n--------------------------------------- U-Net Segmentation Completed  ---------------------------------------\n');


