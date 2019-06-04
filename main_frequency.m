%=============== METHOD 2. *FREQUENCY DOMAIN* ==================
%In this method we apply the filters through a element wise multi-
%plication between the freq representation of the filter and the
%freq. representation of the image. [...]
%operation in the spatial domain. Then we represent the images
%in the spatial and the frequency domain. In the end, we produce
%the hybrid images with addition in the spatial domain.
%Author: Nikolas Tsgkopoulos

addpath('data'); %add image path to directory

im1 = im2double(imread('dog.bmp')); %image 1
im2 = im2double(imread('cat.bmp')); %image 2
imdim = size(im1);

%% Getting Fourier(filter) padded & Fourier(im)
sigmaL = 8;
sigmaH = 6;

[Fou_filterL, im1] = LP_fourier(sigmaL,imdim,im1);
[Fou_filterH, im2] = HP_fourier(sigmaH,imdim,im2);
imdim=size(im1);

Fou_im1 = fftshift(fft2(im1));
Fou_im2 = fftshift(fft2(im2));


%% Convolving in the freq. domain
FLow_conv1 = Fou_im1.*Fou_filterL; %shifted for reasons(?)
FHigh_conv2 = Fou_im2.*Fou_filterH; % -"-
spatial_low = zeros(imdim);
spatial_high = zeros(imdim);

%Deconvolving (spatial domain)

spatial_low = abs(ifftshift(ifft2(FLow_conv1)));
spatial_high = abs(ifftshift(ifft2(FHigh_conv2)));

%% Visualizing the features

spatial_representation(im1,im2,spatial_low,spatial_high);
freq_representation(Fou_im1,Fou_im2,FLow_conv1,FHigh_conv2);

%% Hybrid Images

Hybrid = ifftshift(ifft2(FLow_conv1 + FHigh_conv2));

%Image pyramid
N = 5;
im_pyramid(abs(Hybrid),N,sigmaL,sigmaH)



