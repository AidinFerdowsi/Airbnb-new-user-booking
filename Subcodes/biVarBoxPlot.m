function biVarBoxPlot(DATA1,DATA2,XLABEL,YLABEL)
figure;
boxplot(DATA1,DATA2);
xlabel(XLABEL,'FontSize',13);
ylabel(YLABEL,'FontSize',13);