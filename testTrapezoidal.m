% Script to test Simpson by calling it to integrate
%     f(x) = exp(c*x) + sin(d*x)
% over the interval [a,b], using increasing numbers of subintervals.
%
clear

a = -1; 
b = 1;
e = exp(1);

% set the integrand as an anonymous function
f = @(x) sin(pi * x) .* exp(x);

% set the true integral
I = pi * (e - 1/e) / (1 + pi * pi);

fprintf('True integral = %22.16e\n',I)
for n = [10,20,40,80,160,320,640,1280];
   h = (b-a)/n;
   S = Trapezoidal(f,a,b,n);
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
