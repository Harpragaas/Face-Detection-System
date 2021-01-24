cd 'C:\Users\Harpragaas Singh\Desktop\CLab2\Task3\Yale-FaceA\Code'
images = readFile();

cd 'C:\Users\Harpragaas Singh\Desktop\CLab2\Task3\Yale-FaceA\Code'
%error_plot = zeros(1,10);

for no_of_eigenvectors = 1:1:15
    [u,A,mean_face] = faceRecogonition(images,no_of_eigenvectors);
    
    test_image = flatten_image('C:\Users\Harpragaas Singh\Desktop\CLab2\Task3\Yale-FaceA\My_img\18.png');
    test_minus_mean = test_image - mean_face;
    
    weights_images = weights(A,u,1);
    weights_test_image = weights(test_minus_mean,u,0);
    
    iter = size(weights_images,2);
    
    err=[];
    for i=1:iter
        err(i) = norm(weights_test_image - weights_images(:,i));
    end
    [error,image_no] = min(err);
    fprintf('Error %d --> Image No %d.\n',error,image_no);
    figure,
    display_image(A(:,image_no));

end

