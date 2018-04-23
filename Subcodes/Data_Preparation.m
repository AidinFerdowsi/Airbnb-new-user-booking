function Data_Preparation(inputPath,outputPath)
% inputPath: file path to input file (.MAT)
% outputPath: file path to output file (.MAT)
DATA=load(inputPath);
fieldNames = fieldnames(DATA);
axisNames = strrep(fieldNames,'_','\_');
save(outputPath,'DATA','fieldNames','axisNames');