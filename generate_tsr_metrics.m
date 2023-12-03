function [dict] = generate_tsr_metrics(PATH)
% PATH : the location where TSR directory is located
distortion_list = ["CodecError", "DirtyLens", "Exposure", "GaussianBlur", "Haze", "LensBlur", "Noise", "Rain", "Snow"];
levels = 5;
avg_iters = 600;

for i=1:5
    for j=1:length(distortion_list)
        distortion_path = PATH+"\"+distortion_list(j)+"-"+int2str(i);
        distortion_directory = dir(fullfile(distortion_path,'*.bmp'));
        num_images = length(distortion_directory);

        init_score = [0, 0, 0, 0, 0, 0, 0];
        init_metrics = ["SSIM", "PSNR", "UNIQUE", "MS-UNIQUE", "CSV", "SUMMER", "CW-SSIM"];
        num_metrics = length(init_metrics);
        
        init_dist = dictionary(init_metrics, init_score);
        init_nlm = dictionary(init_metrics, init_score);
        init_bm3d = dictionary(init_metrics, init_score);
        counter = 0;

        for k=1:num_images

            if counter >= avg_iters
                break
            end

            img_distorted_name = distortion_directory(k).name;
            temp = split(img_distorted_name, "_");
            img_original_name = string(append(temp(1),"_",temp(2),"_","00","_","00","_",temp(5)));
            img_distorted_pth = fullfile(distortion_path, distortion_directory(k).name);
            img_original_pth = append(PATH,"\ChallengeFree\",img_original_name);

            img_distorted = imread(img_distorted_pth);
            img_original = imread(img_original_pth);

            %% resize images to 64 x 64
            img_distorted = im2double(im2gray(imresize(img_distorted,[64,64])));
            img_original = im2double(im2gray(imresize(img_original,[64,64])));

            score_struct = process_images_tsr(img_distorted,img_original);

            init_dist_val = init_dist.values + score_struct.distorted.values;
            init_dist = dictionary(init_metrics,reshape(init_dist_val,[1,num_metrics]));
        
            init_nlm_val = init_nlm.values + score_struct.nlm.values;
            init_nlm = dictionary(init_metrics,reshape(init_nlm_val,[1,num_metrics]));
        
            init_bm3d_val = init_bm3d.values + score_struct.bm3d.values;
            init_bm3d = dictionary(init_metrics,reshape(init_bm3d_val,[1,num_metrics]));

            counter = counter + 1;

        end

        avg_score_distorted = dictionary(init_metrics, reshape(init_dist.values/avg_iters,[1, num_metrics]));
        avg_score_nlm = dictionary(init_metrics, reshape(init_nlm.values/avg_iters,[1, num_metrics]));
        avg_score_bm3d = dictionary(init_metrics, reshape(init_bm3d.values/avg_iters,[1, num_metrics]));
        score_struct.distorted = avg_score_distorted;
        score_struct.nlm = avg_score_nlm;
        score_struct.bm3d = avg_score_bm3d;
        dict.(distortion_list(j)+"_"+int2str(i)) = score_struct;

    end
end

end