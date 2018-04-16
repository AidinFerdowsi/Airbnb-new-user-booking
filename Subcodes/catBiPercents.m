function Percents = catBiPercents(CATEGORICAL1,CATEGORICAL2,COLOR,XLABEL,YLABEL,ZLABEL)
figure;
hist3([CATEGORICAL1,CATEGORICAL2],'FaceColor',COLOR);
zt = get(gca,'Ztick');
Percents = zt/(length(CATEGORICAL1))*100;
set(gca, 'ZTick',zt, 'ZTickLabel',floor(Percents)) ;
xlabel(XLABEL,'FontSize',13);
ylabel(YLABEL,'FontSize',13);
zlabel(ZLABEL,'FontSize',13);