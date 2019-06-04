function [fH, im] = HP_fourier(sigma,dim,im)
%This function based on the LP_fourier()
%transforms a lowpass filter to highpass.
%Inputs:
% - sigma: freq sigma
% - dim: image dimensions
% - im: image

%Author: Nikolas Tsagkopoulos

ker_size = ceil(4*sigma + 1); %kernel dim Correction
if ~mod(ker_size,2)
    ker_size = ker_size + 1;
end
for i = 1:dim(3) %Gaussian filter
    f(:,:,i) = fspecial('gaussian',ker_size,sigma);
end

%Debugging: For some pair of pictures except for
%dog - cat it seems that I need to remove one
%more column. Uncomment only if the code doesn't work
%
%im1 = im1(2:end,2:end,:);
%im2 = im2(2:end,2:end,:);
%---------------------------------------------------
if mod((dim(1)-size(f,1))/2,2) %Check conditions for
    im = im(2:end,:,:);        %dimension reduction
end
if mod((dim(2)-size(f,2))/2,2)
    im = im(:,2:end,:);
end

dim=size(im); %zero pad
f = padarray(f,[(dim(1)-size(f,1))/2 (dim(2)-size(f,2))/2],'both');
f = fftshift(fft2(f));

%getting the Highpass filter
fH =   exp(complex(0,angle(f))).*(ones(dim) - abs(f));
end

