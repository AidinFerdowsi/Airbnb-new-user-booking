function datePlot(DATA,XLABEL,YLABEL,COLOR)
figure;
[a,n] = unique(sort(DATA));
num=zeros(length(a),1);
for i=1:length(a)-1
    num(i)=n(i+1)-n(i);
end
num(length(a))=length(DATA)-n(length(a));
plot(a,num,'Color',COLOR);
xlabel(XLABEL,'FontSize',13);
ylabel(YLABEL,'FontSize',13);