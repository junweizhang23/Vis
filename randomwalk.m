%project 1
% scale 100*100 matrix random walk from (50,50)

iteration = 10000;
size = 100;

M = zeros(size);
width = size;
height = size;

start = [width/2,height/2];

for i = 1:iteration
    M =unitrandromwalk2D(M,start,width,height);
end

x=1:1:size;
[x,y]=meshgrid(x);

mesh(x,y,M);

