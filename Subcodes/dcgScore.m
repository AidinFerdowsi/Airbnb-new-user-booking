function DCG = dcgScore(yTrue,yScore,k)
[~,sortI]=sort(yScore);
yTrue = yTrue(sortI);
gain = 2^yTrue -1;
discounts = np.log2()