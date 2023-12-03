tufts_path = "C:\Users\nakul\OneDrive\Desktop\GaTech\ECE6258-DIP\Project\dental";

for i=1:1

    image_name = "\"+int2str(i)+".jpg";
    img_path = tufts_path+image_name;
    score_struct = process_noise(img_path,tufts_path);

end