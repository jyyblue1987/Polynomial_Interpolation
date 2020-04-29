% Script to test Simpson by calling it to integrate
%     f(x) = exp(c*x) + sin(d*x)
% over the interval [a,b], using increasing numbers of subintervals.
%
clear

% set the function and interval parameters
c = 3;
d = 5;
a = -2; 
b = 3;

% set the integrand as an anonymous function
f = @(x) exp(c*x) + sin(d*x);

% set the true integral
I = 1/c*(exp(c*b) - exp(c*a)) - 1/d*(cos(d*b)-cos(d*a));
fprintf('True integral = %22.16e\n',I)

% iterate over a variety of n values
fprintf('Testing Simpson with an increasing number of subintervals:\n')
for n = [10,20,40,80,160,320];
   h = (b-a)/n;
   S = Simpson(f,a,b,n);
   err = abs(I-S);
   if (n == 10)
      fprintf('  h = %10.8f,  S = %22.16e,  err = %8.2e\n', h, S, err)
   else
      fprintf('  h = %10.8f,  S = %22.16e,  err = %8.2e,  ratio = %g\n',...
	  h, S, err, abs(err0/err) )
   end
   err0 = err;
   h0 = h;
end


a = -1; 
b = 2;
e = exp(1);
sqrt2 = sqrt(2);

% set the integrand as an anonymous function
f = @(x) pi * x * x - e * x + sqrt2;

% set the true integral
I = pi/3 *(b^3 - a^3) - 3/2*(b^2 - a^2) + sqrt2 * (b - a);
fprintf('True integral = %22.16e\n',I)
for n = [10,20,40,80,160,320];
   h = (b-a)/n;
   S = Simpson(f,a,b,n);
   err = abs(I-S);
   if (n == 10)
      fprintf('  h = %10.8f,  S = %22.16e,  err = %8.2e\n', h, S, err)
   else
      fprintf('  h = %10.8f,  S = %22.16e,  err = %8.2e,  ratio = %g\n',...
	  h, S, err, abs(err0/err) )
   end
   err0 = err;
   h0 = h;
end
