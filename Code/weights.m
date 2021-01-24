function [weights_image_vector] = weights(A,u,train)
weights_image_vector = [];
if train == 1
    nfiles = size(A,2);
    for i = 1:nfiles
        image_vector = A(:,i);
        weights_image_vector(:,i) = u'*image_vector;
        image_vector_eigfaces = u*weights_image_vector(:,i);
        image_matrix = reshape(image_vector_eigfaces,[500,500]);
        image = mat2gray(image_matrix);
    end
else
    image_vector =A;
    weights_image_vector = u'*image_vector;
    image_vector_eigfaces = u*weights_image_vector;
    image_matrix = reshape(image_vector_eigfaces,[500,500]);
    image = mat2gray(image_matrix);
end
end

