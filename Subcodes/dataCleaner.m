function DATA=dataCleaner(DATA,fieldNames,index)
for i = 1:length(fieldNames)
    DATA.(fieldNames{i}) = DATA.(fieldNames{i})(~index);
end