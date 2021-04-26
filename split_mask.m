function [splitmask] = split_mask(mask,min_len,dilatation)




skeleton = bwskel(mask,'MinBranchLength',min_len);

mask = imdilate(mask,strel('disk',dilatation));

branch_points = bwmorph(skeleton,'branchpoints');

branch_points_dil = imdilate(branch_points,strel('disk',3));


skeleton_split = skeleton;

skeleton_split(branch_points_dil) = 0;

skeleton_split = bwareaopen(skeleton_split,min_len,8);


D = bwdistgeodesic(mask,skeleton_split);
D(isnan(D)) = Inf;
D = imimposemin(D,skeleton_split,8);
splitmask = (double(watershed(D,8)) .* double(mask))>0;


% filt = bwpropfilt(splitmask,'perimeter',[2*min_len Inf]);
% keep = splitmask;
% keep(filt) = 0;
% 
% 
% D = bwdistgeodesic(mask,splitmask);
% D(isnan(D)) = Inf;
% D = imimposemin(D,splitmask,8);
% splitmask = (double(watershed(D,8)) .* double(mask))>0;


splitmask = double(splitmask);

end

