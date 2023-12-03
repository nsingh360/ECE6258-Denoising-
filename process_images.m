function [score_distorted, score_nlm, score_bm3d] = process_images(PATH1,PATH2,save_pth)
% PATH1 : path for the distorted image
% PATH2 : path for the original image
% save_pth : path for directory in which reconstructed images are saved

%% get image .jpg name for saving
temp = split(PATH1,"\");
img_name = string(temp(end));
nlm_directory = save_pth + "\nlm";
bm3d_directory = save_pth + "\bm3d";
if ~exist(nlm_directory,'dir')
    mkdir(nlm_directory)
    mkdir(bm3d_directory)
end

img_original = imread(PATH2);
img_distorted = imread(PATH1);

%% convert to grayscale 
img_original = im2double(im2gray(img_original));
img_distorted = im2double(im2gray(img_distorted));

%% nlm filtering
img_recon_nlm = imnlmfilt(img_distorted);
recon_pth = append(nlm_directory,"\",img_name);
imwrite(img_recon_nlm, recon_pth)

%% bm3d filtering 
est_sigma = estimate_noise(img_distorted);
img_recon_bm3d = BM3D(img_distorted, est_sigma);
recon_pth = append(bm3d_directory,"\",img_name);
imwrite(img_recon_bm3d, recon_pth);

%% evaluate metrics
score_distorted = metrics(img_distorted, img_original);
score_nlm = metrics(img_recon_nlm, img_original);
score_bm3d = metrics(img_recon_bm3d, img_original);

%% visual 
tiledlayout(2,2)

nexttile
imshow(img_original)
title("Original Image")

nexttile
imshow(img_distorted)
title("Distorted Image")

nexttile
imshow(img_recon_nlm)
title("NLM Filtering")

nexttile
imshow(img_recon_bm3d)
title("BM3D Filtering")

end