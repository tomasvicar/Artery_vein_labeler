clc;clear all;close all force;

user_name = 'Tom';

img_name = 'C:\Users\vicar\Desktop\code\Artery_vein_labeler\HRF\images\01_dr.JPG';

mask_name = replace(replace(img_name,'images','manual1'),'.JPG','.tif');


artery_vein_labeler(img_name,mask_name,user_name)


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
