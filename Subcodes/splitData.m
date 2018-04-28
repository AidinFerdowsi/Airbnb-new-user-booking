function [trainingSet, trainingSetTarget, testingSet, testingSetTarget] = splitData(trainingData, trainRatio,classIndex)
    %total number of rows
    nRows = size(trainingData, 1);
    %create a logical index vector
    ind = false(nRows, 1);
    ind(1:round(trainRatio*nRows)) = true;
    %randomise order
    ind = ind(randperm(nRows));
    trainingSet = trainingData(ind, :);
    trainingSetTarget = trainingSet(:, classIndex);
    trainingSet(:,classIndex) = [];
    testingSet = trainingData(~ind, :);
    testingSetTarget = testingSet(:, classIndex); 
    testingSet(:,classIndex) = [];
end

