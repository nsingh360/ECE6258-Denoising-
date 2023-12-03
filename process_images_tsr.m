function [score_struct] = process_images_tsr(img_distorted,img_original)
% img_distorted : distorted image
% img_original : original image

%% convert to grayscale 
img_original = im2double(im2gray(img_original));
img_distorted = im2double(im2gray(img_distorted));

%% nlm filtering
img_recon_nlm = imnlmfilt(img_distorted);

%% bm3d filtering 
est_sigma = estimate_noise(img_distorted);
img_recon_bm3d = BM3D(img_distorted, est_sigma);

%% evaluate metrics
score_distorted = metrics(img_distorted, img_original);
score_nlm = metrics(img_recon_nlm, img_original);
score_bm3d = metrics(img_recon_bm3d, img_original);

score_struct.distorted = score_distorted;
score_struct.nlm = score_nlm;
score_struct.bm3d = score_bm3d;

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