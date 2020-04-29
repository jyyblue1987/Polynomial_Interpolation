% value of n = 10 and n = 20.
n_array = [10 20]

for i = 1:2
    %  nodes xi are equally spaced on the interval with x0 = ?5 and xn = 5.
    n = n_array(i);
    xi = linspace(-5, 5, n);
    fi = sin(xi);
    
    figure
    plot(xi, fi, 'o');
    hold on;
    
    % evaluating them at 401 equally spaced x-values on the interval [?5; 5]
    x = linspace(-5, 5, 401);
    y = Lagrange(xi, fi, x);
    
    plot(x, y);
    hold off;
end
    

for i = 1:2
    %  nodes xi are equally spaced on the interval with x0 = ?5 and xn = 5.
    n = n_array(i);
    xi = linspace(-5, 5, n);
    fi = 1 ./ (xi .* xi + 1);
    
    figure
    plot(xi, fi, 's');
    hold on;
    
    % evaluating them at 401 equally spaced x-values on the interval [?5; 5]
    x = linspace(-5, 5, 401);
    y = Lagrange(xi, fi, x);
    
    plot(x, y);
    hold off;
end
