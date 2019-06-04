function im_res = lowpass(im,sigma)
%This function creates a gaussian template
%as the prebuilt:
%filter = fspecial('gaussian',ker_size,sigma);
%Inputs:
% - im: image
% - sigma: frequency sigma
%Author: Nikolas Tsagkopoulos

ker_size = ceil(4*sigma + 1); %kernel dim Correction
if ~mod(ker_size,2)
    ker_size = ker_size + 1;
end

filter = zeros(ker_size,ker_size);
x0 = ceil(ker_size/2);
y0 = x0;
x = 1:ker_size;
y = 1:ker_size;
scalar = 1/(2*pi*sigma^2);
exponent = -1/(2*sigma^2);
for i =1:ker_size
    for j = 1:ker_size
        vars = (x(i) - x0).^2 + (y(j) - y0).^2;
        filter(i,j) = scalar.*exp(vars.*exponent);
    end
end

im_res = my_conv(im,filter);
end

