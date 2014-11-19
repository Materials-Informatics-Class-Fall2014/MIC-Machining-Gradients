function spatialstats()

path = 'J:\Users\Patxi\Dropbox\ME8333\24';
close all;
N = 64; % pca components

for i = 1:9
    
    % generate the correct path and get the right cropped filename
    file{i} = [path,'\Pic',num2str(i,'%1.0d'),'\',num2str(i,'%1.0d'),'c.tif'];
    info = imfinfo(file{i});
    
    % get a subimage in BW
    mysize = [1800,1400];
    topleft = [info.Height-mysize(1), floor(info.Width*0.5) - floor(mysize(2)*0.5)];
    BW = getsubimage(file{i},mysize, topleft,0.25);
    
    % get edges
    EDG = edge(BW,'canny');
    % cut off the edges
    EDG = EDG(3:size(EDG,1)-2,3:size(EDG,2)-2);
    
    % compute just the chordlength on a line-by-line basis (in height dir)
    binw = 1; % pixels
    [cords,Ncounts] = getchords(EDG,binw,mysize(2));
    
    if i == 1
        cordsN = cords([1,3],:,:);
    else
        cordsN(2,:,:) = cordsN(2,:,:) + cords(3,:,:);
    end

    % plotting routine
%     h = figure();
%     set(h,'position',[1921          85        1280         920]);
%     myplotter(h,BW,EDG,cords,Ncounts);
    5;
end
    
[cordsN2, NcountsN] = getpdf(cordsN);




%% determine PCA. then use N of the first basis functions to approximate 
% the pdf at each row. determine weights needed for this and give back the
% weights and vectors

X = squeeze(cordsN2(2,:,:))';
[weights vectors approx] = mypca(X,N);

factor = norm(X-approx);

h = figure();
set(h,'position',[1921          85        1280         920]);
myplotter(h,BW,EDG,cordsN2,NcountsN,weights);

% plotpca(EDG,weights,vectors,cordsN2,[1:N]);

function plotpca(EDG,weights,vectors,cords,comps)


ind = 1;
xmax = 0;
ymax = 0;

f = size(vectors,2);
cords = cords(:,1:f,:);

for i = 1:size(cords,3)
    ind2 = find(cords(3,:,i),1,'last');
    ymax2 = max(cords(2,:,i));
    if ind2 > ind
        ind = ind2;
        xmax = cords(1,ind,i);
    end
    if ymax2 > ymax
        ymax = ymax2;
    end
end




for i = 1: length(comps)
    
    h=figure;
    set(h,'position',[1921          85        1280         920]);
    subplot(2,2,1);
    imshow(EDG);
    
    subplot(2,2,2);
    plot(weights(:,comps(i)),[1:size(EDG,1)]);
    title(['Principal Component Weight No. ',num2str(comps(i),'%1.0d')]);
    ylabel('Pixels');
    xlabel(['$\alpha_{',num2str(comps(i),'%1.0d'),'}$'],'interpreter','latex','fontsize',16);
    
    subplot(2,2,[3,4]);
    bar(cords(1,:,1),vectors(comps(i),:)); 
    ylim([0 ymax]);
    xlim([0 xmax]);
        
    title(['Principal Component No. ',num2str(comps(i),'%1.0d')]);

    
    set(gcf,'color','w');
    saveas(h,['princecomp_pdf_',num2str(comps(i),'%1.0d')],'png');
end


function [weights vectors approx] = mypca(X , N)
% gets X which is the m x p where 
% m = number of rows in the images
% p = number of bins 
%
% N is the number of principal components that are to be used to
% reconstruct each row of X using e[1...N] and weights w[1...N]
%
% vectors are simply the N first principal components
%
% and weights are m x N (each row can be reconstructed using N weights and
%                        eigenvectors)
%

[coeff,score,latent,tsquared,explained,mu] = pca(X);

vectors = coeff(:,1:N);

num = find(diag(coeff) == 1,1);

b = X - ones(size(X,1),1)*mu; % subtract mean

weights = zeros(size(X,1),N);
approx = zeros(size(X,1),size(X,2));

for i = 1:size(b,1)
   for j = 1:N
       weights(i,j) = b(i,:)*vectors(:,j);
   end
end

approx = weights*vectors' + ones(size(b,1),1)*mu;





function [cordsN2, NcountsN] = getpdf(cordsN)

NcountsN = zeros(1,size(cordsN,3));
cordsN2 = zeros(size(cordsN,1)+1,size(cordsN,2),size(cordsN,3));
for i = 1:size(cordsN,3)
    NcountsN(i) = sum(cordsN(2,:,i));
    mypdf = cordsN(2,:,i).*cordsN(1,:,i);
    mypdf = mypdf / sum(mypdf);
    cordsN2(:,:,i) = [cordsN(1,:,i); mypdf; cordsN(2,:,i)];
    
end


function [cords,Ncounts] = getchords(EDG,binw,width);
% function that generates the chord distribution at each row of pixels for
% the provided binary image EDG

bins = linspace(binw*0.5,width,floor(width/binw));

cords = zeros(3,length(bins),size(EDG,1));
Ncounts = zeros(1,size(EDG,1));

for i = 1:size(EDG,1)
    
    inds = find(EDG(i,:));
    N = length(inds);
    lengths = inds(2:N)-inds(1:N-1);
    inds = find(lengths>1);
    lengths = lengths(inds);
    if ~isempty(inds)
        [counts,centers] = hist(lengths,bins);
        Ncounts(i) = sum(counts);
        cords(:,:,i) = [centers;counts/Ncounts(i);counts];
    else
        cords(:,:,i) = [centers;zeros(1,length(centers));counts];
    end
end

% cords = flipdim(cords,3);

function BW = getsubimage(file, mysize, topleft, scale)
% maybe there is a more efficient way to get the pixels we want without
% having to read the entire image file???

mysize = floor(scale*mysize);
topleft = floor(scale*topleft);

BW = imread(file);
BW = imresize(BW(:,:,[1:3]),scale);
BW = rgb2gray(BW);
BW = BW(topleft(1):(topleft(1)+mysize(1)),topleft(2):(topleft(2)+mysize(2)));

function myplotter(h,BW,EDG,cords,Ncounts, weights)
% plotting routine


c = {'r','b','g','y'};

subplot(4,3,[1 4]); 
imshow(BW); hold on;
axis on;
j = 0;
for i = 1+ floor(linspace(0,1,4)*(size(cords,3)-1))
    j = j + 1;
    plot([1 size(BW,2)],[i i],c{j},'linewidth',2);
end


subplot(4,3,[7 10]); 
imshow(EDG); hold on;
axis on;
j = 0;
for i = 1+ floor(linspace(0,1,4)*(size(cords,3)-1))
    j = j + 1;
    plot([1 size(BW,2)],[i i],c{j},'linewidth',2);
end



samples = 1+ floor(linspace(0,1,4)*(size(cords,3)-1));

ind = 1;
xmax = 0;
ymax = 0;
for i = samples
    ind2 = find(cords(3,:,i),1,'last');
    ymax2 = max(cords(2,:,i));
    if ind2 > ind
        ind = ind2;
        xmax = cords(1,ind,i);
    end
    if ymax2 > ymax
        ymax = ymax2;
    end
end

ymax = ceil(ymax*10)/10;

j = 1;
for i = samples
    subplot(4,3,2+3*(j-1));

    if find(cords(1,:,i),1)
        p=bar(cords(1,:,i),cords(2,:,i));
        set(p,'Facecolor',c{j});
        set(p,'Edgecolor','k');
        ylim([0 ymax]);
        xlim([0 xmax]);
        title(['Number of Chords Sampled: ',num2str(Ncounts(i),'%1.0d')]);
    end
    j = j + 1;
end


for i = 1:size(EDG,1)
    
    
    if ~isempty(find(i == samples))
        j = find(i == samples);
        col = c{j};
        m = 8;
    else
        col = 'k';
        m = 2;
    end
    subplot(4,3,[9 12]);
    plot3(weights(i,1),weights(i,2),weights(i,3),'marker','o','markeredgecolor','k','markerfacecolor',col,'markersize',m); hold on;
    
    subplot(4,3,3);
    plot(weights(i,1),weights(i,2),'marker','o','markeredgecolor','k','markerfacecolor',col,'markersize',m); hold on;
    
    
    subplot(4,3,6);
    plot(weights(i,1),weights(i,3),'marker','o','markeredgecolor','k','markerfacecolor',col,'markersize',m); hold on;
    
end
subplot(4,3,[9 12]);
xlabel('$\alpha_1$','interpreter','latex','fontsize',14);
ylabel('$\alpha_2$','interpreter','latex','fontsize',14);
zlabel('$\alpha_3$','interpreter','latex','fontsize',14);

subplot(4,3,3);
xlabel('$\alpha_1$','interpreter','latex','fontsize',14);
ylabel('$\alpha_2$','interpreter','latex','fontsize',14);

subplot(4,3,6);
xlabel('$\alpha_1$','interpreter','latex','fontsize',14);
ylabel('$\alpha_3$','interpreter','latex','fontsize',14);
    
set(h,'color','w');
saveas(h,'image_pdf','png');






