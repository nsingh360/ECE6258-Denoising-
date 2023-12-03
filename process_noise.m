function [score_struct] = process_noise(PATH,save_pth)
% PATH : path of the image
% save_pth : directory where noisy and reconstructed images are stored
levels = ["level1", "level2", "level3", "level4","level5"];

%score_struct = struct([]);
params = dictionary([""], [NaN]);

save_pth_gaussian = save_pth + "\gaussian";
save_pth_pepper = save_pth + "\pepper";
save_pth_blur = save_pth + "\blur";

if ~exist(save_pth_gaussian,'dir')
    mkdir(save_pth_gaussian);
    mkdir(save_pth_pepper);
    mkdir(save_pth_blur);
end

init_pepper_density = 0.1;
init_gauss_var = 0.01;
init_blur_std = 1;

img = im2double(im2gray(imread(PATH)));
temp = split(PATH,"\");
img_name = string(temp(end));

for i=1:numel(levels)

    %level_struct = struct([]);
    if ~exist(save_pth_gaussian+"\level"+int2str(i),'dir')
        mkdir(save_pth_gaussian+"\level"+int2str(i))
        mkdir(save_pth_pepper+"\level"+int2str(i))
        mkdir(save_pth_blur+"\level"+int2str(i))
    end

    %% scores for gaussian noise
    params("var_gauss") = init_gauss_var*i;
    img_distorted = add_noise(img, "gaussian", params);
    noise_pth = append(save_pth_gaussian+"\level"+int2str(i),"\",img_name);
    imwrite(img_distorted, noise_pth);
    [score_dist, score_nlm, score_bm3d] = process_images(noise_pth, PATH,save_pth_gaussian+"\level"+int2str(i));
    level_struct.gaussian.bm3d = score_bm3d;
    level_struct.gaussian.distorted = score_dist;
    level_struct.gaussian.nlm = score_nlm;

    %% scores for salt pepper noise
    params("d") = init_pepper_density*i;
    img_distorted = add_noise(img, "salt & pepper", params);
    noise_pth = append(save_pth_pepper+"\level"+int2str(i), "\", img_name);
    imwrite(img_distorted, noise_pth);
    [score_dist, score_nlm, score_bm3d] = process_images(noise_pth, PATH,save_pth_pepper+"\level"+int2str(i));
    level_struct.pepper.bm3d = score_bm3d;
    level_struct.pepper.distorted = score_dist;
    level_struct.pepper.nlm = score_nlm;

    %% scores for blur noise
    params("blur_std") = init_blur_std*i;
    img_distorted = add_noise(img, "blur",params);
    noise_pth = append(save_pth_blur+"\level"+int2str(i),"\",img_name);
    imwrite(img_distorted, noise_pth);
    [score_dist, score_nlm, score_bm3d] = process_images(noise_pth, PATH, save_pth_blur+"\level"+int2str(i));
    level_struct.blur.bm3d = score_bm3d;
    level_struct.blur.distorted = score_dist;
    level_struct.blur.nlm = score_nlm;

    score_struct(i) = level_struct;

end

end