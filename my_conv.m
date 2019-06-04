function im_res = my_conv(im,g)
%This function performs the conv. operator similar to the
%prebuilt matlab function: conv2d(A,b,'same').
%Commented section compares my_conv() to conv2().
%Inputs:
% - im: image
% -  g: conv. window
%Author: Nikolas Tsagkopoulos

imdim = size(im); %Image dim.
if size(imdim) < 3
    imdim(3) = 1;
end
temp_dim = size(g); %Template dim.
im_res = zeros(imdim); %Output init.


leftB = temp_dim(2)/2 + .5;   %Indices modification
rightB = temp_dim(2)/2 - .5;  %Works only for odd temps.
upperB = temp_dim(1)/2 + .5;
downB = temp_dim(1)/2 - .5;
%% CONVOLUTION %%
g_flp = flip(flip(g,2),1); %filter rotation 180

for k = 1 : imdim(3) %for every channel
    for i = upperB : imdim(1) - downB
        for j = leftB : imdim(2) - rightB
            im_res(i,j,k) = sum(sum(im(i-upperB+1:i+downB,...
                                j-leftB+1:j+rightB,k).*g_flp));
        end
    end
end

%% conv2 Comparison
%The section belowcompares the my_conv()
%result with the prebuild function conv2()

% real_sum = zeros(imdim(1),imdim(2),imdim(3));
% for i=1:imdim(3)
%     real_sum(:,:,i) = conv2(im(:,:,i),g,'same');
% end
% b = real_sum - im_res;
% figure(); image(real_sum - im_res);

end