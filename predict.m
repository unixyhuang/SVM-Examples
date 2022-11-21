function [ res ] = predict(Alpha,Y,K,b)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
N = size(K,2);
H = Y .* Alpha;
H = repmat(H,1,N);
T = H .* K;
res = sum(T,1)+b;

end

