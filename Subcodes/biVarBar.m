function biVarBar(DATA1,DATA2,XLABEL,YLABEL)
cat1 = categories(DATA1);
cat2 = categories(DATA2);
num = zeros(length(cat1),cat(2));
for i=1:length(cat1)
    for j=1:length(cat2)
        num(i,j) = sum(DATA2(DATA1==cat1(i))==cat2(j));
    end
end
bar(categorical(cat1),num/length(DATA2)*100);
xlabel(XLABEL,'FontSize',13);
ylabel(YLABEL,'FontSize',13);
legend(cat2,'FontSize',13,'Location','Best');