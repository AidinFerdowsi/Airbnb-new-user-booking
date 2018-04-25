function catIn = catReplacer(catIn,categories,catReplaced,bordersCat)
index = (catIn == catReplaced);
catIndex=1:length(categories);
catIn(index) = categorical(sum(rand(sum(index),1) > repmat(bordersCat',sum(index),1),2)'+1,catIndex,categories);
