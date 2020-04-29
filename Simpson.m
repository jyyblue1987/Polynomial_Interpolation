% function SfPh = Simpson(func,a,b,n)
% integrate a function using the composite Simpson's rule with uniform spacing
% 
% func: the function handle for the integrand
% n: the number of subintervals, n must be even
% a,b: lower and upper limits of the integral
%
% Sheng Xu @ SMU Mathematics, Nov. 2014

function S = Simpson(func,a,b,n)

  h = (b-a)/n;

  if ( mod(n,2) == 1 ) 
    disp('Error: Odd number of points, Simpson is not defined!');
  else
    n2 = n/2;
    S = func(a) + func(b);
    for k=1:n2-1
      S = S + 2*func(a+2*k*h);
    end
    for k=1:n2
      S = S + 4*func(a+(2*k-1)*h);
    end
    S = S*h/3.0;
  end
  
