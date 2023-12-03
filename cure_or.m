clc;
clear;
levels = 5;

%% Salt pepper metrics %%
% for i=1:levels
%     %% metrics for 3d1 texture
%     PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\3d1\DSLR_JPG';
%     PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\18_grayscale_saltpepper\Level_',int2str(i),'\3d1\DSLR_JPG');
%     save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\18_grayscale_saltpepper\Level_',int2str(i),'_recon\3d1');
%     [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
%     level_struct.three_d1.bm3d = score_bm3d;
%     level_struct.three_d1.nlm = score_nlm;
%     level_struct.three_d1.distorted = score_distorted;
% 
%     %% metrics for 3d2 texture
%     PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\3d2\DSLR_JPG';
%     PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\18_grayscale_saltpepper\Level_',int2str(i),'\3d2\DSLR_JPG');
%     save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\18_grayscale_saltpepper\Level_',int2str(i),'_recon\3d2');
%     [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
%     level_struct.three_d2.bm3d = score_bm3d;
%     level_struct.three_d2.nlm = score_nlm;
%     level_struct.three_d2.distorted = score_distorted;
% 
%     %% metrics for texture1
%     PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\texture1\DSLR_JPG';
%     PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\18_grayscale_saltpepper\Level_',int2str(i),'\texture1\DSLR_JPG');
%     save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\18_grayscale_saltpepper\Level_',int2str(i),'_recon\texture1');
%     [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
%     level_struct.texture1.bm3d = score_bm3d;
%     level_struct.texture1.nlm = score_nlm;
%     level_struct.texture1.distorted = score_distorted;
% 
%     %% metrics for texture2
%     PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\texture2\DSLR_JPG';
%     PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\18_grayscale_saltpepper\Level_',int2str(i),'\texture2\DSLR_JPG');
%     save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\18_grayscale_saltpepper\Level_',int2str(i),'_recon\texture2');
%     [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
%     level_struct.texture2.bm3d = score_bm3d;
%     level_struct.texture2.nlm = score_nlm;
%     level_struct.texture2.distorted = score_distorted;
% 
%     %% metrics for white
%     PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\white\DSLR_JPG';
%     PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\18_grayscale_saltpepper\Level_',int2str(i),'\white\DSLR_JPG');
%     save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\18_grayscale_saltpepper\Level_',int2str(i),'_recon\white');
%     [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
%     level_struct.white.bm3d = score_bm3d;
%     level_struct.white.nlm = score_nlm;
%     level_struct.white.distorted = score_distorted;
% 
%     score_struct_pepper(i) = level_struct;
% end
% save('metrics_cure_or_saltpepper.mat', 'score_struct_pepper');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% clc;
% clear;
% levels = 5;
%% blur metrics %% 
% for i=1:levels
%     %% metrics for 3d1 texture
%     PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\3d1\DSLR_JPG';
%     PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\05_blur\Level_',int2str(i),'\3d1\DSLR_JPG');
%     save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\05_blur\Level_',int2str(i),'_recon\3d1');
%     [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
%     level_struct.three_d1.bm3d = score_bm3d;
%     level_struct.three_d1.nlm = score_nlm;
%     level_struct.three_d1.distorted = score_distorted;
% 
%     %% metrics for 3d2 texture
%     PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\3d2\DSLR_JPG';
%     PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\05_blur\Level_',int2str(i),'\3d2\DSLR_JPG');
%     save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\05_blur\Level_',int2str(i),'_recon\3d2');
%     [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
%     level_struct.three_d2.bm3d = score_bm3d;
%     level_struct.three_d2.nlm = score_nlm;
%     level_struct.three_d2.distorted = score_distorted;
% 
%     %% metrics for texture1
%     PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\texture1\DSLR_JPG';
%     PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\05_blur\Level_',int2str(i),'\texture1\DSLR_JPG');
%     save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\05_blur\Level_',int2str(i),'_recon\texture1');
%     [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
%     level_struct.texture1.bm3d = score_bm3d;
%     level_struct.texture1.nlm = score_nlm;
%     level_struct.texture1.distorted = score_distorted;
% 
%     %% metrics for texture2
%     PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\texture2\DSLR_JPG';
%     PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\05_blur\Level_',int2str(i),'\texture2\DSLR_JPG');
%     save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\05_blur\Level_',int2str(i),'_recon\texture2');
%     [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
%     level_struct.texture2.bm3d = score_bm3d;
%     level_struct.texture2.nlm = score_nlm;
%     level_struct.texture2.distorted = score_distorted;
% 
%     %% metrics for white
%     PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\white\DSLR_JPG';
%     PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\05_blur\Level_',int2str(i),'\white\DSLR_JPG');
%     save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\05_blur\Level_',int2str(i),'_recon\white');
%     [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
%     level_struct.white.bm3d = score_bm3d;
%     level_struct.white.nlm = score_nlm;
%     level_struct.white.distorted = score_distorted;
% 
%     score_struct_blur(i) = level_struct;
% end
% save('metrics_cure_or_blur.mat', 'score_struct_blur');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% under exposure metrics
clc;
clear;
levels=5;
for i=1:levels
    %% metrics for 3d1 texture
    PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\3d1\DSLR_JPG';
    PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\12_grayscale_underexposure\Level_',int2str(i),'\3d1\DSLR_JPG');
    save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\12_grayscale_underexposure\Level_',int2str(i),'_recon\3d1');
    [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
    level_struct.three_d1.bm3d = score_bm3d;
    level_struct.three_d1.nlm = score_nlm;
    level_struct.three_d1.distorted = score_distorted;

    %% metrics for 3d2 texture
    PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\3d2\DSLR_JPG';
    PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\12_grayscale_underexposure\Level_',int2str(i),'\3d2\DSLR_JPG');
    save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\12_grayscale_underexposure\Level_',int2str(i),'_recon\3d2');
    [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
    level_struct.three_d2.bm3d = score_bm3d;
    level_struct.three_d2.nlm = score_nlm;
    level_struct.three_d2.distorted = score_distorted;

    %% metrics for texture1
    PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\texture1\DSLR_JPG';
    PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\12_grayscale_underexposure\Level_',int2str(i),'\texture1\DSLR_JPG');
    save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\12_grayscale_underexposure\Level_',int2str(i),'_recon\texture1');
    [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
    level_struct.texture1.bm3d = score_bm3d;
    level_struct.texture1.nlm = score_nlm;
    level_struct.texture1.distorted = score_distorted;

    %% metrics for texture2
    PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\texture2\DSLR_JPG';
    PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\12_grayscale_underexposure\Level_',int2str(i),'\texture2\DSLR_JPG');
    save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\12_grayscale_underexposure\Level_',int2str(i),'_recon\texture2');
    [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
    level_struct.texture2.bm3d = score_bm3d;
    level_struct.texture2.nlm = score_nlm;
    level_struct.texture2.distorted = score_distorted;

    %% metrics for white
    PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\white\DSLR_JPG';
    PATH1 = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\12_grayscale_underexposure\Level_',int2str(i),'\white\DSLR_JPG');
    save_pth = append('C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\12_grayscale_underexposure\Level_',int2str(i),'_recon\white');
    [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
    level_struct.white.bm3d = score_bm3d;
    level_struct.white.nlm = score_nlm;
    level_struct.white.distorted = score_distorted;

    score_struct_under_exposure(i) = level_struct;
end
save('metrics_cure_or_under_exposure.mat', 'score_struct_under_exposure');