clc;clear all;close all force;

user_name = 'Tom';

%% HRF
% img_name = 'C:\Users\vicar\Desktop\code\Artery_vein_labeler\HRF\images\01_dr.JPG';
% params.dilatation = 3;
% params.resize = 0.5;
% params.min_len = 80;
% mask_name = replace(replace(img_name,'images','manual1'),'.JPG','.tif');


%% DRHAGIS
% img_name = 'C:\Users\vicar\Desktop\code\Artery_vein_labeler\DRHAGIS\DRHAGIS\Fundus_Images\1.jpg';
% params.dilatation = 3;
% params.resize = 0.5;
% params.min_len = 80;
% mask_name = replace(replace(img_name,'Fundus_Images','Manual_Segmentations'),'.jpg','_manual_orig.png');



%% UoA_DR
% img_name = 'C:\Users\vicar\Desktop\code\Artery_vein_labeler\UoA_DR\1\1.jpg';
% params.dilatation = 3;
% params.resize = 1;
% params.min_len = 80;
% mask_name = replace(replace(img_name,'Fundus_Images','Manual_Segmentations'),'.jpg','.1.jpg');



%% nove
img_name = "D:\Vessel_masks_labeled\Fundus_Images\Gacr_01_002_01_L.JPG";
params.dilatation = 3;
params.resize = 0.5;
params.min_len = 80;
mask_name = replace(replace(img_name,'Fundus_Images','Manual_Segmentations'),'.JPG','_vessel_segmented.tif');



artery_vein_labeler(img_name,mask_name,user_name,params)


%%parametry

%dilatece - aby čára nezakrývala cévu ale byla kolem ní - nastavte si jak
%to bude příjemné - pak to stejně zmenšíme na původní velikost co má
%maska...

%resize - zmenšení obrázku pro rychlejší odezvu klikače 

%min_len - filtr na délku kusů cév - kračí kusy cév se spojí....


% malé cucky neřešte - to se pak kdyžtak nějak automaticky dočistí ;)
% zkratky jsou napsané v závorkách
% join - spojí objekty kterých se kreslením dotknete
% split - rozdělí nakreslenou čárou
% save a load můžete využít pro průběžné uložení
% ok provede uložení - soubor najdete u dat...
% dělal sem to v 2021a matlabu, tak bude asi potřeba
% cévy sem trochu dilatoval aby to bylo líp vidět (to pak vrátím zpátky) 
% zmenšil sem obrázek na polovinu, aby to jelo trochu rychleji - i tak to není uplně super rychlé ale nenapadá mě jak to udělat líp
% pro zoomavání je nejlepší aktivovat lupu a použít kolečko (aktivace v pravo nahoře na panelu nebo tlačítkem zoom on)
% zoomování lze aktivovat zkratkou (y) ale nelze zkratkou vypnout (při zoomavání nefungují klávesové zkratky)
