function [fimage] = flatten_image(filename)
% Converting image matrix into vector
fimage = imresize(double(imread(filename)),[500 500]);
[testm, testn]= size(fimage);
fimage = reshape(fimage,[testm*testn,1]);
end

