function K = kernel(X,Y,type,C)  
K = X*Y';
if(nargin>=3)
   switch type
       case 2
           a= C(1);
           b=C(2);
           p=C(3); 
           K = (b*K+a).^p;
       case 3
            X2 = sum(X.*X,2);%每一行求和
            Y2 = sum(Y.*Y,2);  
            XY = X*Y';  
            K = -C*abs(repmat(X2,[1 size(Y2,1)]) + repmat(Y2',[size(X2,1) 1]) - 2*XY);  
            K = exp(K);
   end
end
    
end  