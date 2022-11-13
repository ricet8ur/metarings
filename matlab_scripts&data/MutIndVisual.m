close all;
clear;
clc;

load('data_2x4_100.mat');

x = [1/N, a_max];
y = [1/N, b_max];

%x = 1/N:1/N:a_max; the same but it takes more memory
%y = 1/N:1/N:b_max;

L_pos = zeros(N*b_max, N*a_max);
L_neg = zeros(N*b_max, N*a_max);

for i=1:N*b_max % preparing positive and negative log(J)
   for j=1:a_max*N
       if L(i,j) > 0 
           L_pos(i,j) = log(L(i,j));
           L_neg(i,j) = NaN;
       else
           L_neg(i,j) = log(-L(i,j));
           L_pos(i,j) = NaN;
       end
   end
end

fig = imagesc(x, y, L_pos) %image
colorbar