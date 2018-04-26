function [trainingSet, trainingSetTarget, testingSet, testingSetTarget] = splitData(trainingData, trainRatio)
    %total number of rows
    nRows = size(trainingData, 1);
    %create a logical index vector
    ind = false(nRows, 1);
    ind(1:round(trainRatio*nRows)) = true;
    %randomise order
    ind = ind(randperm(nRows));
    trainingSet = trainingData(ind, :);
    trainingSetTarget = trainingSet(:, 4);
    trainingSet(:,4) = [];
    testingSet = trainingData(~ind, :);
    testingSetTarget = testingSet(:, 4); 
    testingSet(:,4) = [];
end

