function [u,A,mean_face] = faceRecogonition(images,nc)

[a,b] = size(images);
[m,n] = size(cell2mat(images(1)));

sum_images = double(zeros(m,n));

for i = a:b
    sum_images = sum_images + cell2mat(images(i));
end

mean_face = sum_images/m;
A=[];
u=[];
for i = a:b
    image_mean = cell2mat(images(i)) - mean_face;
    A = [A image_mean];
end
U = transpose(A)*A;
[v, D] = eigs(U, nc);
u = A*v;
end



