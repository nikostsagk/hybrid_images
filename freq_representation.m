function freq_representation(A,B,AFourier,BFourier)
%Inputs:
% - A: 1st image's FFT
% - B: 2nd image's FFT
% - Af: Low frequencies of 1st image's FFT
% - Bf: High frequencies of 2nd image's FFT
%Author: Nikolas Tsagkopoulos

figure(2);
subplot(2,2,1); image(abs(A(:,:,1))); title('Image 1'); ylabel('Original');
subplot(2,2,2); image(abs(B(:,:,1))); title('Image 2');
subplot(2,2,3); image(abs(AFourier(:,:,1))); title('Low freq.');
subplot(2,2,4); image(abs(BFourier(:,:,1))); title('High freq.');


end
