function Percents = catPercents(CATEGORICAL,COLOR,XLABEL,YLABEL)
figure;
histogram(CATEGORICAL,'FaceColor',COLOR);
yt = get(gca,'Ytick');
Percents = yt/(length(CATEGORICAL))*100;
set(gca, 'YTick',yt, 'YTickLabel',floor(Percents)) ;
xlabel(XLABEL,'FontSize',13);
ylabel(YLABEL,'FontSize',13);