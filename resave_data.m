clc;clear all; close all;

% %% HRF
% img_fnames = subdir('../data/HRF/images/*.JPG');
% for img_num = 1:length(img_fnames)
%     img_fname = img_fnames(img_num).name;
% 
%     img_fname_tmp = replace(img_fname,'.JPG','.jpg');
%     mask_fname = replace(replace(img_fname_tmp,'images','manual1'),'.jpg','.tif');
%     clas_fname = replace(replace(img_fname_tmp,'images','clasified_labeller_output'),'.jpg','_Eva.png');
%     savename = replace(replace(img_fname_tmp,'images','clasified'),'.jpg','.png');
%     img = imread(img_fname);
%     mask = imread(mask_fname);
%     clas = imread(clas_fname);
% 
%     clas = double(clas);
%     clas(clas == 0) = nan;
%     clas_inpained = fillmissing2(clas, "nearest");
%     clas_inpained = imresize(clas_inpained,2);
%     clas_inpained(mask == 0) = 0;
% 
% 
%     [filepath,name,ext] = fileparts(savename);
%     mkdir(filepath)
%     imwrite(clas_inpained, savename)
% end



%% DRHAGIS
img_fnames = subdir('../data/DRHAGIS/Fundus_Images/*.jpg');
for img_num = 1:length(img_fnames)
    img_fname = img_fnames(img_num).name;

    img_fname_tmp = replace(img_fname,'.JPG','.jpg');
    mask_fname = replace(replace(img_fname_tmp,'Fundus_Images','Manual_Segmentations'),'.jpg','_manual_orig.png');
    clas_fname = replace(replace(img_fname_tmp,'Fundus_Images','Manual_Classification_labeller_output'),'.jpg',' _*.png');
    clas_fname = subdir(clas_fname);
    if length(clas_fname) == 0
        continue
    end
    clas_fname = clas_fname(1).name;
    drawnow;
    savename = replace(replace(img_fname_tmp,'Fundus_Images','clasified'),'.jpg','.png');
    img = imread(img_fname);
    mask = imread(mask_fname);
    clas = imread(clas_fname);

    clas = double(clas);
    clas(clas == 0) = nan;
    clas_inpained = fillmissing2(clas, "nearest");
    clas_inpained = imresize(clas_inpained,2);
    clas_inpained(mask == 0) = 0;
    

    [filepath,name,ext] = fileparts(savename);
    mkdir(filepath)
    imwrite(clas_inpained, savename)
end


% img_name = 'C:\Users\vicar\Desktop\code\Artery_vein_labeler\DRHAGIS\DRHAGIS\Fundus_Images\1.jpg';
% params.dilatation = 3;
% params.resize = 0.5;
% params.min_len = 80;
% mask_name = replace(replace(img_name,'Fundus_Images','Manual_Segmentations'),'.jpg','_manual_orig.png');