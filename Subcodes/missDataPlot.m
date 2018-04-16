function percents=missDataPlot(DATA,fieldNames,axisNames)
percents = zeros(length(fieldNames),1);
for i=1:length(fieldNames)
    if iscategorical(DATA.(fieldNames{i})(1))
        percents(i) = sum(DATA.(fieldNames{i})== categorical({'-unknown-'}))/length(DATA.(fieldNames{i}));
    elseif isfloat(DATA.(fieldNames{i})(1))
        percents(i) = sum(isnan(isfloat(DATA.(fieldNames{i}))))/length(DATA.(fieldNames{i}));
    elseif isdatetime(DATA.(fieldNames{i})(1))
        percents(i) = sum(isnat(DATA.(fieldNames{i})))/length(DATA.(fieldNames{i}));
    else
        percents(i)=0;
    end
end
bar(categorical(axisNames),[1-percents,percents]*100,'stacked');
ylabel('Percentage','FontSize',13);
xlabel('Attributes','FontSize',13);
legend({'Complete','Missing'},'FontSize',13);