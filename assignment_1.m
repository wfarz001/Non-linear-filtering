%%%%Image Softening using average filter%%%%%%%%%%%

A=imread('Image.jpg');
A=imrotate(A,-90);
A=rgb2gray(A);
A=imresize(A,[1024,1024]);

grayImage = A;
%subplot(2,1,1);
[W,H,D]=size(grayImage);
figure(1);imshow(grayImage,[]);
title('Original Image', 'FontSize', 15);


windowSize = 9; % kernel size 
kernel = ones(windowSize, windowSize) / windowSize ^ 2;
blurredImage = imfilter(grayImage, kernel, 'symmetric');
figure(2); imshow(blurredImage,[]);
title('Blurred Image using Box Filter', 'FontSize', 15);


%%%%%% Gaussian Smoothing filter on the image %%%%%%%%%%%

Iblur1 = imgaussfilt(grayImage,2); 
Iblur2 = imgaussfilt(grayImage,4);
Iblur3 = imgaussfilt(grayImage,8);

figure(3);
imshow(Iblur1,[]);
title('Smoothed image with Gaussain Filter, \sigma = 2');

figure(4);
imshow(Iblur2,[]);
title('Smoothed image with Gaussain Filter, \sigma = 4');

figure(5);
imshow(Iblur3,[]);
title('Smoothed image with Gaussain Filter, \sigma = 8');

[peaksnr_blurredImage, snr_blurredImage] = psnr(blurredImage, grayImage);
  
fprintf('\n The Peak-SNR value of average filtered image is %0.4f', peaksnr_blurredImage);
fprintf('\n The SNR value of average filtered image is %0.4f \n', snr_blurredImage);

[peaksnr_Iblur1, snr_Iblur1] = psnr(Iblur1, grayImage);

fprintf('\n The Peak-SNR value of gaussian filter with sigma=2 is %0.4f',peaksnr_Iblur1);
fprintf('\n The SNR value of gaussian filter with sigma=2 is %0.4f \n', snr_Iblur1);

[peaksnr_Iblur2, snr_Iblur2] = psnr(Iblur2, grayImage);

fprintf('\n The Peak-SNR value of gaussian filter with sigma=4 is %0.4f',peaksnr_Iblur2);
fprintf('\n The SNR value of gaussian filter with sigma=4 is %0.4f \n', snr_Iblur2);

[peaksnr_Iblur3, snr_Iblur3] = psnr(Iblur3, grayImage);

fprintf('\n The Peak-SNR value of gaussian filter with sigma=8 is %0.4f',peaksnr_Iblur3);
fprintf('\n The SNR value of gaussian filter with sigma=8 is %0.4f \n', snr_Iblur3);


% switch D
%     case 3
% MSE_image_vs_blurred=(sum(sum((grayImage(:,:,1)-blurredImage(:,:,1)).^2+(grayImage(:,:,2)-blurredImage(:,:,2)).^2+(grayImage(:,:,3)-blurredImage(:,:,3)).^2)))./(W*H);
% MSE_image_vs_blur1=sum(sum((grayImage(:,:,1)-Iblur1(:,:,1)).^2+(grayImage(:,:,2)-Iblur1(:,:,2)).^2+(grayImage(:,:,3)-Iblur1(:,:,3)).^2))./(W*H);
% MSE_image_vs_blur2=sum(sum((grayImage(:,:,1)-Iblur2(:,:,1)).^2+(grayImage(:,:,3)-Iblur2(:,:,3)).^2+(grayImage(:,:,3)-Iblur2(:,:,3)).^2))./(W*H);
%     case 1
% MSE_image_vs_blurred=sum(sum((grayImage(:,:,1)-blurredImage(:,:,1)).^2))./(W*H);
% MSE_image_vs_blur1=sum(sum((grayImage(:,:,1)-Iblur1(:,:,1)).^2))./(W*H);
% MSE_image_vs_blur2=sum(sum((grayImage(:,:,1)-Iblur2(:,:,1)).^2))./(W*H);
% end
% T = table(MSE_image_vs_blurred,MSE_image_vs_blur1,MSE_image_vs_blur2)
