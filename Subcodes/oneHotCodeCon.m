function oneHotCoded = oneHotCodeCon(DATA)
[~,m] = size(DATA);
oneHotCoded = [];
for i=1:m
    oneHotCoded = [oneHotCoded,oneHotCoding(DATA(:,i))];
end