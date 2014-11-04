%
% Find edges of an image
%
%

function BW1 = edgefinder(filename, plotflag)


close all;

I2 = imread(filename);
% start = 0.0001;
% final = 1;
% I2 = I(ceil(start*size(I,1)):final*size(I,1),ceil(size(I,2)*start):final*size(I,2),:);

scale = 0.2;
G1 = rgb2gray(I2);
G = imresize(G1,scale,'bilinear');

if plotflag 
    y = getmondim(1);
    h=figure('position',y);

    %% 1,1
    subplot(2,3,1);imshow(G); axis on;
    title(['Grayscale Image, scaling = ',num2str(scale,'%1.2f')]);

    %% 2,1

    % [levels metric] = multithresh(G,2);
    % levels = double(levels)/256;
    [level metric] = graythresh(G);
    % BW1 = im2bw(G,levels(1));
    % BW2 = 1-im2bw(G,levels(2));
    % BW = BW1 & BW2; BW = 1- BW;
    BW = im2bw(G,level);
    
    figure(h);

    green = cat(3,zeros(size(G)),ones(size(G)),zeros(size(G)));
    subplot(2,3,4); imshow(G);
    subplot(2,3,4); hold on; gh = imshow(green);
    title('Threshold');
    set(gh,'AlphaData',imcomplement(BW)); axis on;

    BW1 = bwmorph(BW1, 'thin', Inf);
    %% 2,2
    filter1 = 'canny';
    thresh1 = [];

    BW1 = edge(G,filter1,thresh1);

    subplot(2,3,5); imshow(BW1); axis on; title([filter1,' filter, threshold = ',num2str(thresh1,'%1.2f')]);

    %% 1,3
    [Gx, Gy] = imgradientxy(G);
    [Gmag,Gdir] = imgradient(Gx,Gy);

    subplot(2,3,3); imshow(Gdir); axis on; title('Gradient Dir');

    %% 2,3
    subplot(2,3,6); imshow(G1);

    green = cat(3,zeros(size(G1)),ones(size(G1)),zeros(size(G1)));
    subplot(2,3,6); hold on; gh = imshow(green);
    title('multi-threshold');
    set(gh,'AlphaData',imresize(BW1,[size(G1,1) size(G1,2)])); axis on;

    axis on; title('Canny + unscaled image');

    %% histogram
    [counts, x]=imhist(G);
    counts = counts*(1/sum(counts));

    figure(h);
    subplot(2,3,2); 
    plot(x,counts); ys = get(gca,'Ylim'); hold on;

    try
        plot([levels(1) levels(1)]*256,ys,'r');
        plot([levels(2) levels(2)]*256,ys,'r');
    catch
        plot([level level]*256,ys,'r');
    end
    ylim(ys);title(['m1 = ', num2str(metric,'%1.2f')]);
    axis on; grid on;
    set(gcf,'color','w');
    saveas(h,num2str(i,'%1.0d'),'png');
else
    filter1 = 'canny';
    thresh1 = [];

    BW1 = edge(G,filter1,thresh1);
    BW1 = bwmorph(BW1, 'thin', Inf);
end