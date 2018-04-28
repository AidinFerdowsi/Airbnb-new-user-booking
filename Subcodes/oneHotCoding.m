function [oneHot,labels]= oneHotCoding(DATA)
Categories = categories(DATA)';
nCat = length(Categories);
oneHot = (repmat(DATA,1,nCat)==Categories);
labels = Categories;