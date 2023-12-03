function [distorted_image] = add_noise(img, noise_type, params)
% noise_type is gaussian, salt pepper or poisson
% params is a dictionary for parameters of gaussian and salt_pepper noise
if noise_type == "gaussian"
    distorted_image = imnoise(img, "gaussian", 0, params("var_gauss"));

elseif noise_type == "salt & pepper"
    distorted_image = imnoise(img, "salt & pepper", params("d"));

elseif noise_type == "poisson"
    distorted_image = imnoise(img, "poisson");

elseif noise_type == "blur"
    distorted_image = imgaussfilt(img, params("blur_std"));
end
end