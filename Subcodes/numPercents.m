function Percents = numPercents(NUM,XLABEL,YLABEL)
NUM = NUM(~isnan(NUM));
histfit(NUM,40,'Kernel');
yt = get(gca,'Ytick');
Percents = yt/(length(NUM))*100;
set(gca, 'YTick',yt, 'YTickLabel',floor(Percents)) ;
xlabel(XLABEL,'FontSize',13);
ylabel(YLABEL,'FontSize',13);