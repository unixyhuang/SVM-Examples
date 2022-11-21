function [ Alphas,fval,exitflag ] = svm_learn( X,Y,type,p)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
[len] = length(Y);
H = 0.5*((Y*Y').* kernel(X,X,type,p));
f = -ones(len,1);
A = [];
B = [];
Aeq = Y';
beq = 0;
[Alphas,fval,exitflag] = quadprog(H,f,A,B,Aeq,beq,zeros(len,1));
end

