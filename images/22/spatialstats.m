function spatialstats()

addpath('J:\Users\Patxi\Documents\GitHub\SpatialStatisticsFFT');

filename{1} = 'J:\Users\Patxi\Dropbox\ME8333\24\MultiFocus.tif';
filename{2} = 'J:\Users\Patxi\Dropbox\ME8333\24\MultiFocus1.tif';
filename{3} = 'J:\Users\Patxi\Dropbox\ME8333\24\MultiFocus2.tif';
% filename = 'J:\Users\Patxi\Dropbox\ME8333\22_S1\exposuretrial\multifocus.tif';

for i = 1:length(filename)
    [BW,IMG] = edgefinder(filename{i},0,0.25);
    y = getmondim(1);
    h=figure('position',[y(1) y(2) y(3) 0.5*y(4)]);
    S = [1,2]


    [T xx] = SpatialStatsFFT(imcomplement(BW),[],'display',0);
    T = (T);
    T = flipdim(T,2);
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
    saveas(h,num2str(i,'%1.0d'),'png');
    savefig(num2str(i,'%1.0d'));
end

function overlay(h,S,N,IMG,BW);

green = cat(3,zeros(size(IMG)),ones(size(IMG)),zeros(size(IMG)));
figure(h); subplot(S(1),S(2),N);
imshow(IMG);
hold on; gh = imshow(green);
set(gh,'AlphaData',imcomplement(BW)); axis on;

