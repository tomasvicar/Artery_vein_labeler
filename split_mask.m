function [splitmask] = split_mask(mask,min_len)


skeleton = bwskel(mask,'MinBranchLength',min_len);

mask = imdilate(mask,strel('disk',5));

branch_points = bwmorph(skeleton,'branchpoints');

branch_points_dil = imdilate(branch_points,strel('disk',3));


skeleton_split = skeleton;

skeleton_split(branch_points_dil) = 0;

skeleton_split = bwareaopen(skeleton_split,min_len,8);

D = bwdistgeodesic(mask,skeleton_split);

D(isnan(D)) = Inf;

D = imimposemin(D,skeleton_split,8);


splitmask = double((double(watershed(D,8)) .* double(mask))>0);
end

