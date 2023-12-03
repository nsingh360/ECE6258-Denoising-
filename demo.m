% PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\3d1\DSLR_JPG\4_5_5_092_10_0.jpg';
% PATH1 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\18_grayscale_saltpepper\Level_4\3d1\DSLR_JPG\4_5_5_092_18_4.jpg';
% 
% %[score_distorted, score_nlm, score_bm3d] = process_images(PATH1, PATH2);
% scores_level_noise = process_noise("lena.tif","C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Code\Project-Code\proj_matlab_code");
% 
% PATH2 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\10_grayscale_no_challenge\3d1\DSLR_JPG';
% PATH1 = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\18_grayscale_saltpepper\Level_4\3d1\DSLR_JPG';
% save_pth = 'C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\CURE-OR\18_grayscale_saltpepper\Level_4_recon\3d1';
% % 
% [score_distorted, score_nlm, score_bm3d] = generate_cure_or_metrics(PATH1,PATH2,save_pth);
% 
% set_12_path = "C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\Set-12"

% img_1 = imread("C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\TSR\Real_Test\ChallengeFree\01_01_00_00_0001.bmp");
% img_2 = imread("C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\TSR\Real_Test\CodecError-1\01_01_03_01_0001.bmp");
% img_1 = imresize(img_1,[64,64]);
% img_2 = imresize(img_2,[64,64]);
% 
% %img_1 = im2double(im2gray(img_1));
% %img_2 = im2double(im2gray(img_2));
% met = metrics(img_1,img_2);
% imshow(img_1)

tsr_metrics = generate_tsr_metrics("C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\TSR\Real_Test");



