close all;
clear;
clc;

N = 100; %number of dots
a_max = 4;
b_max = 2;

L = zeros(N*b_max, N*a_max); % preparing matrix

for i=1:N*b_max % filling matrix
   for j=1:a_max*N
      L(i,j) = MutIndIntegral(j/N, i/N);
   end
end

save('data_2x4_100.mat'); % saving data in the file
