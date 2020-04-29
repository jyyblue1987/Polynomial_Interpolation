% function SfPh = Simpson(func,a,b,n)
% integrate a function using the composite Simpson's rule with uniform spacing
% 
% func: the function handle for the integrand
% n: the number of subintervals, n must be even
% a,b: lower and upper limits of the integral
%
% Sheng Xu @ SMU Mathematics, Nov. 2014

function T = Trapezoidal(func,a,b,n)
    h=(b-a)/n;
    It=0;
    for k=1:(n-1)
        x=a+h*k;
        It=It+func(x);
    end
    T = h*(func(a)+func(b))/2 + h * It;
end

  
