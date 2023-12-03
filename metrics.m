function [score] = metrics(img1, img2)
% img1 : gray scale reconstructed image
% img2 : gray scale original image

metric_names = ["SSIM", "PSNR", "UNIQUE", "MS-UNIQUE", "CSV", "SUMMER", "CW-SSIM"];

img1 = im2gray(img1);
img2 = im2gray(img2);
[rows, columns] = size(img1);
img1_rgb = zeros([rows, columns, 3]);
img2_rgb = zeros([rows, columns, 3]);
for i=1:3
    img1_rgb(:, :, i) = abs(img1);
    img2_rgb(:, :, i) = abs(img2);
end

%% SSIM 
ssim_score = ssim(img1, img2);

%% PSNR 
psnr_score = psnr(img1, img2);

%% UNIQUE 
addpath('UNIQUE-Unsupervised-Image-Quality-Estimation-master')
unique = mslUNIQUE(img1_rgb, img2_rgb);

%% MS-UNIQUE
addpath('MS-UNIQUE-master')
ms_unique = mslMSUNIQUE(img1_rgb, img2_rgb);

%% CSV
addpath('CSV-master')
csv_score = csv(img1_rgb, img2_rgb);

%% SUMMER 
addpath('SUMMER-master')
summer = SUMMER(img1_rgb, img2_rgb);

%% CW_SSIM
addpath('CW-SSIM')
cw_ssim = cwssim_index(img1, img2, 1, 16, 0, 0);

%% create score dictionary
score = dictionary(metric_names, [ssim_score, psnr_score, unique, ms_unique, csv_score, summer, cw_ssim]);

end