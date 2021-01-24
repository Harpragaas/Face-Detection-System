function [images] = readFile()
%The function reads all images that is used for training and output an image
%matrix
cd 'C:\Users\Harpragaas Singh\Desktop\CLab2\Task3\Yale-FaceA\trainingset'
imagefiles = dir('C:\Users\Harpragaas Singh\Desktop\CLab2\Task3\Yale-FaceA\trainingset\*.png');
nfiles = length(imagefiles);
for i= 1: nfiles
    currentfilename = imagefiles(i).name;
    currentimage = imread(currentfilename);
    currentimage = imresize(double(currentimage),[500 500]);
    [m, n] = size(currentimage);
    images{i} = reshape(currentimage,[m*n,1]);
end
end

