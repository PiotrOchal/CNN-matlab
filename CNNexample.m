imds = imageDatastore('C:\Users\Username\Desktop\file','IncludeSubfolders',true, ...
    'LabelSource','foldernames');%create datastory, write your file path
imds.ReadFcn = @customreader;%resizze images

[train,val,test]=splitEachLabel(imds,0.6,0.1,'randomized');%split data

reset(gpuDevice(1));%reset GPU
options = trainingOptions('sgdm', ...
    'MaxEpochs',40,    'InitialLearnRate',1e-4,'MiniBatchSize',4,  ...
    'Verbose',false, ...
    'Plots','training-progress', 'ValidationData',val,'ValidationFrequency',10);%, 'ExecutionEnvironment', 'cpu'); %options
net1=trainNetwork(train,layers_1,options);%train network
reset(gpuDevice(1));%reset GPU
p=classify(net1,test);%, 'ExecutionEnvironment', 'cpu');%classify test data
accuracy = sum(p == test.Labels)/numel(test.Labels)%accurcay
cm = confusionchart(test.Labels,p);%confusion chart
cm.ColumnSummary='column-normalized';
cm.RowSummary='row-normalized';
reset(gpuDevice(1));



%function from https://github.com/WeiChuen99/Face-Recognition-Algorithms-MATLAB/blob/main/customreader1.m
function data = customreader(filename)
% code from default function: 
onState = warning('off', 'backtrace'); 
c = onCleanup(@() warning(onState)); 
data = imread(filename); % added lines: 
data = data(:,:,min(1:3, end)); 
data = imresize(data,[224 224]);%size of image
end