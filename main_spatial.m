%=============== METHOD 1. *SPATIAL DOMAIN* ==================
%In this method we apply the filters through a convolutional 
%operation in the spatial domain. Then we represent the images
%in the spatial and the frequency domain. In the end, we produce
%the hybrid images with addition in the spatial domain.
%Author: Nikolas Tsagkopoulos

addpath('data'); %add image path to directory

im1 = im2double(imread('dog.bmp')); %image 1
im2 = im2double(imread('cat.bmp')); %image 2
imdim = size(im1);

%% Filtering the images
sigmaL = 6; %modify low/high sigma respectively
sigmaH = 8;

im_1_filtrd = lowpass(im1,sigmaL);
im_2_filtrd = highpass(im2,sigmaH);

%% FFT for RGB
Fou_im1 = zeros(imdim); %dim initialization
Fou_im2 = zeros(imdim);
Fou_im1_filtrd = zeros(imdim);
Fou_im2_filtrd = zeros(imdim);

for i = 1:size(im1,3) %Calculated for every channel
    Fou_im1(:,:,i) = fftshift(fft2(im1(:,:,i)));
    Fou_im2(:,:,i) = fftshift(fft2(im2(:,:,i)));
    Fou_im1_filtrd(:,:,i) = fftshift(fft2(im_1_filtrd(:,:,i)));
    Fou_im2_filtrd(:,:,i) = fftshift(fft2(im_2_filtrd(:,:,i)));
end

%% Visualizing the features

spatial_representation(im1,im2,im_1_filtrd,im_2_filtrd);
freq_representation(Fou_im1,Fou_im2,Fou_im1_filtrd,Fou_im2_filtrd);

%% Hybrid Images

im_1_filtrd = im2uint8(im_1_filtrd);
im_2_filtrd = im2uint8(im_2_filtrd);
Hybrid = imadd(im_1_filtrd,im_2_filtrd);


%Image pyramid
N = 5;
im_pyramid(Hybrid,N,sigmaL,sigmaH)




