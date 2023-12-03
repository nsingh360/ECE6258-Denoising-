set_12_path = "C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\Set-12";

init_metrics = ["SSIM", "PSNR", "UNIQUE", "MS-UNIQUE", "CSV", "SUMMER", "CW-SSIM"];
init_val = [0,0,0,0,0,0,0];

levels = 5;

for i=1:5
    gaussian_dist.("level"+int2str(i)) = dictionary(init_metrics, init_val);
    gaussian_bm3d.("level"+int2str(i)) = dictionary(init_metrics, init_val);
    gaussian_nlm.("level"+int2str(i)) = dictionary(init_metrics, init_val);

    pepper_dist.("level"+int2str(i)) = dictionary(init_metrics, init_val);
    pepper_bm3d.("level"+int2str(i)) = dictionary(init_metrics, init_val);
    pepper_nlm.("level"+int2str(i)) = dictionary(init_metrics, init_val);

    blur_dist.("level"+int2str(i)) = dictionary(init_metrics, init_val);
    blur_bm3d.("level"+int2str(i)) = dictionary(init_metrics, init_val);
    blur_nlm.("level"+int2str(i)) = dictionary(init_metrics, init_val);
end

for i=1:12
    if i<10
        image_name = "\0"+int2str(i)+".png";
    elseif i>=10
        image_name = "\"+int2str(i)+".png";
    end
    img_path = set_12_path+image_name;
    score_struct = process_noise(img_path,set_12_path);

    for k = 1:levels
        temp1 = score_struct(k).gaussian.distorted.values + gaussian_dist.("level"+int2str(k)).values;
        gaussian_dist.("level"+int2str(k)) = dictionary(init_metrics, reshape(temp1, [1,7]));
        temp1 = score_struct(k).gaussian.bm3d.values + gaussian_bm3d.("level"+int2str(k)).values;
        gaussian_bm3d.("level"+int2str(k)) = dictionary(init_metrics, reshape(temp1, [1,7]));
        temp1 = score_struct(k).gaussian.nlm.values + gaussian_nlm.("level"+int2str(k)).values;
        gaussian_nlm.("level"+int2str(k)) = dictionary(init_metrics, reshape(temp1, [1,7]));

        temp1 = score_struct(k).pepper.distorted.values + pepper_dist.("level"+int2str(k)).values;
        pepper_dist.("level"+int2str(k)) = dictionary(init_metrics, reshape(temp1, [1,7]));
        temp1 = score_struct(k).pepper.bm3d.values + pepper_bm3d.("level"+int2str(k)).values;
        pepper_bm3d.("level"+int2str(k)) = dictionary(init_metrics, reshape(temp1, [1,7]));
        temp1 = score_struct(k).pepper.nlm.values + pepper_nlm.("level"+int2str(k)).values;
        pepper_nlm.("level"+int2str(k)) = dictionary(init_metrics, reshape(temp1, [1,7]));

        temp1 = score_struct(k).blur.distorted.values + blur_dist.("level"+int2str(k)).values;
        blur_dist.("level"+int2str(k)) = dictionary(init_metrics, reshape(temp1, [1,7]));
        temp1 = score_struct(k).blur.bm3d.values + blur_bm3d.("level"+int2str(k)).values;
        blur_bm3d.("level"+int2str(k)) = dictionary(init_metrics, reshape(temp1, [1,7]));
        temp1 = score_struct(k).blur.nlm.values + blur_nlm.("level"+int2str(k)).values;
        blur_nlm.("level"+int2str(k)) = dictionary(init_metrics, reshape(temp1, [1,7]));
    end
end