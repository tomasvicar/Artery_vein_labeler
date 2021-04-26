clc;clear all;close all force;

user_name = 'Tom';

img_name = 'C:\Users\vicar\Desktop\code\Artery_vein_labeler\HRF\images\01_dr.JPG';

mask_name = replace(replace(img_name,'images','manual1'),'.JPG','.tif');


artery_vein_labeler(img_name,mask_name,user_name)




% malé cucky neřešte - to se pak kdyžtak nějak automaticky dočistí ;)
% zkratky jsou napsané v závorkách
% join - spojí objekty kterých se kreslením dotknete
% split - rozdělí masky kterých se kreslítkem dotknete
% save a load můůžete využít pro průběžné uložení
% ok provede uložení - soubor najdete u dat...


