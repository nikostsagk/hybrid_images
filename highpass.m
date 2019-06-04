function im_res = highpass(im,sigma)
%This function creates a highpass filter using
%the function lowpass(). Removes from the original
%freqs, the low freqs and correctsvthe borders 
%afterwards.
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
im_res = im - im_res;%Obtaining the High freq
im_res(im_res == im) = 0; %correcting the borders

end

