if isoctave()
   pkg load image; 
else
   import image;
end

close all;

[path, name, ext] = fileparts(mfilename('fullpath'));
path = fullfile(path, '/../data/');

str = sprintf('FULLPATH to data: [%s]', path);
disp(str);

% load image
I = imread(fullfile(path, 'k1.png'));
I = I(:,:,2);

% add noise
J = imnoise(I, 'salt & pepper', 0.04);
figure; imshow(J);

% take the median filter
K = medfilt2(J);
figure; imshow(K);

