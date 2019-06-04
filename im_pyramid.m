function im_pyramid(im,n,sL,sH)
%This function performs an image pyramid.
%Inputs:
% - im: image
% -  n: reproduction samples
% - sL: low sigma (for the title)
% - sH: high sigma (for the title)
%Author: Nikolaos Tsagkopoulos

image{1} = im;
hybrid_pyr{1} = im;
for i=2:n
    image{i} = imresize(image{i-1},.5);
    %changing subsampled images dimensions, so we can concatenate
    %and show the images as one
    hybrid_pyr{i} = padarray(image{i},size(im,1)-size(image{i},1),255,'pre');
end
image = cat(2,hybrid_pyr{:});
figure(3); 
imshow(image)
title(sprintf('sigma low %s sigma High %s',num2str(sL), num2str(sH)))
end

