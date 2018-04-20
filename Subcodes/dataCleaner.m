function DATA=dataCleaner(DATA,index)
fieldNames = fieldnames(DATA);
for i = 1:length(fieldNames)
    DATA.(fieldNames{i}) = DATA.(fieldNames{i})(~index);
end