function y=Lagrange(xi,fi,x)
% data: (xi,fi), i=0, ...,n
% evaluation points: x
% return: y=p(x), where p is the interpolant

% Sheng Xu, SMU Math, 2014

n=length(xi)-1;
y=zeros(size(x));
for k=0:n
   num=ones(size(x));
   den=1;
   for j=0:k-1
      num=num.*(x-xi(j+1));
      den=den*(xi(k+1)-xi(j+1));
   end
   for j=k+1:n
      num=num.*(x-xi(j+1));
      den=den*(xi(k+1)-xi(j+1));
   end
   l=num/den;
   y=y+fi(k+1).*l;
end

