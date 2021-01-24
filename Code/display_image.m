function display_image(fimage)
% Displays image by converting image vector to image matrix
imshow(mat2gray(reshape(fimage,[500,500])));
end

