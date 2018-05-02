function Percents = catPercents(CATEGORICAL,COLOR,XLABEL,YLABEL)
histogram(CATEGORICAL,'FaceColor',COLOR);
yt = get(gca,'Ytick');
% xt = get(gca,'Xtick');
% [yt,index]=sort(yt,'descend');
Percents = yt/(length(CATEGORICAL))*100;
% bar(xt(index),floor(Percents),'FaceColor',COLOR);
set(gca, 'YTick',yt, 'YTickLabel',floor(Percents)) ;
xlabel(XLABEL,'FontSize',13);
ylabel(YLABEL,'FontSize',13);