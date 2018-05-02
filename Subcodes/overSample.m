function overSampleDATA = overSample(DATA,IreGen)
nreGen = sum(IreGen);
ratio=floor((size(DATA,1)-nreGen)/nreGen);
overSampleDATA = DATA(~IreGen,:);
overSampleDATA = [overSampleDATA;repmat(DATA(IreGen,:),ratio,1)];