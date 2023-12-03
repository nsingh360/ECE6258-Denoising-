function [avg_score_distorted, avg_score_nlm, avg_score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth)
% PATH1 : directory path for distorted images
% PATH2 : directory path for original images
% save_pth : path for directory in which reconstructed images are saved

counter = 0;
avg_iters = 1;

init_score = [0, 0, 0, 0, 0, 0, 0];
init_metrics = ["SSIM", "PSNR", "UNIQUE", "MS-UNIQUE", "CSV", "SUMMER", "CW-SSIM"];
num_metrics = length(init_metrics);

init_dist = dictionary(init_metrics, init_score);
init_nlm = dictionary(init_metrics, init_score);
init_bm3d = dictionary(init_metrics, init_score);

dist_directory = dir(fullfile(PATH1,'*.jpg'));
num_images = length(dist_directory);

for i=1:num_images

    if counter >= avg_iters
        break
    end

    img_distorted_name = dist_directory(i).name;
    temp = split(img_distorted_name, "_");
    img_original_name = string(append(temp(1),"_",temp(2),"_",temp(3),"_",temp(4),"_",'10',"_","0.jpg"));
    img_distorted_pth = fullfile(PATH1, dist_directory(i).name);
    img_original_pth = append(PATH2,"\",img_original_name);

    [score_distorted, score_nlm, score_bm3d] = process_images(img_distorted_pth, img_original_pth, save_pth);

    init_dist_val = init_dist.values + score_distorted.values;
    init_dist = dictionary(init_metrics,reshape(init_dist_val,[1,num_metrics]));

    init_nlm_val = init_nlm.values + score_nlm.values;
    init_nlm = dictionary(init_metrics,reshape(init_nlm_val,[1,num_metrics]));

    init_bm3d_val = init_bm3d.values + score_bm3d.values;
    init_bm3d = dictionary(init_metrics,reshape(init_bm3d_val,[1,num_metrics]));

    counter = counter + 1;
end

avg_score_distorted = dictionary(init_metrics, reshape(init_dist.values/avg_iters,[1, num_metrics]));
avg_score_nlm = dictionary(init_metrics, reshape(init_nlm.values/avg_iters,[1, num_metrics]));
avg_score_bm3d = dictionary(init_metrics, reshape(init_bm3d.values/avg_iters,[1, num_metrics]));



end