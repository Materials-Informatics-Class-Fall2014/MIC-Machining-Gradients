function spatialstats()

addpath('J:\Users\Patxi\Documents\GitHub\SpatialStatisticsFFT');

filename = 'J:\Users\Patxi\Dropbox\ME8333\22_S1\exposuretrial\z_0009.tif';
% filename = 'J:\Users\Patxi\Dropbox\ME8333\22_S1\exposuretrial\multifocus.tif';

[BW,IMG] = edgefinder(filename,0,0.2);

y = getmondim(1);
h=figure('position',y);
S = [1,2]


[T xx] = SpatialStatsFFT(imcomplement(BW),[],'display',0);

subplot(S(1),S(2),2); 


pcolor(fftshift(xx{2}),fftshift(xx{1}),fftshift(real(T))); 
xlabel('t_x','Fontsize',16); ylabel('t_y','Fontsize',16, 'Rotation',0); 
hc = colorbar; shading flat; axis equal
str = 'Probability density';
set( get( hc, 'Ylabel'), 'String', str, 'Fontsize',16,'Rotation',270,'VerticalAlignment','Bottom');
ylim([min(xx{1}) max(xx{1})]);
freezeColors;
cbfreeze;

overlay(h,S,1,IMG,BW);

set(gcf,'color','w');
saveas(h,num2str(1,'%1.0d'),'png');

function overlay(h,S,N,IMG,BW);

green = cat(3,zeros(size(IMG)),ones(size(IMG)),zeros(size(IMG)));
figure(h); subplot(S(1),S(2),N);
imshow(IMG);
hold on; gh = imshow(green);
set(gh,'AlphaData',imcomplement(BW)); axis on;

