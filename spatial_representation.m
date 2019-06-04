function spatial_representation(A,B,Af,Bf)
%Inputs:
% - A: 1st image
% - B: 2nd image
% - Af: Low frequencies of 1st image
% - Bf: High frequencies of 2nd image
%Author: Nikolas Tsagkopoulos

figure(1);
subplot(2,2,1); imshow(A); title('Image 1'); ylabel('Original');
subplot(2,2,2); imshow(B); title('Image 2');
subplot(2,2,3); imshow(Af); title('Low freq.');
subplot(2,2,4); imshow(Bf + 0.5); title('High freq.'); %Visual reasons

end