function [trainingSet, trainingSetTarget, testingSet, testingSetTarget] = splitData(trainingData, trainRatio,classColumn)
    %total number of rows
    nRows = size(trainingData, 1);
    %create a logical index vector
    ind = false(nRows, 1);
    ind(1:round(trainRatio*nRows)) = true;
    %randomise order
    ind = ind(randperm(nRows));
    trainingSet = trainingData(ind, :);
    trainingSetTarget = trainingSet(:, classColumn);
    trainingSet(:,classColumn) = [];
    testingSet = trainingData(~ind, :);
    testingSetTarget = testingSet(:, classColumn); 
    testingSet(:,classColumn) = [];
end

