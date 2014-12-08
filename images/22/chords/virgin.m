
%%
H = imread('C:\Users\Patxi\SkyDrive\MELKOTE\Experimental\CP-Ti\Pics\Virgin\virgin_20X.tif');

H = rgb2gray(H(1:1300,:,:));imshow(H);
H = imadjust(H);


EDG = edge(H,'canny',0.2);

imshow(EDG);