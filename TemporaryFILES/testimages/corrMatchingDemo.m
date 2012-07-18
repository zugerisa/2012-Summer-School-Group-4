% --------------------------------------------------------
% Demo: Template Matching using Correlation Coefficients
% By Yue Wu (Rex)
% Department of Electrical and Computer Engineering
% Tufts University
% Medford, MA
% 08/30/2010
% --------------------------------------------------------


close all

%% Prepare the image for analysis
F = test_6_grayscale; % read in coins image
T = template; % read in template image
%% display frame and template
figure, subplot(121),imshow(F),title('Scanned Paper Roll');
subplot(122),imshow(T),title('Punchinghole Template');
%% correlation matching
[corrScore, boundingBox] = corrMatching(F,T);
%% show results
figure,imagesc(abs(corrScore)),axis image, axis off, colorbar, 
title('Corr Measurement Space')
