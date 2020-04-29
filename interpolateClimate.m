xi = 1885:10:1995;
fi = [56.70 56.72 56.87 56.89 57.01 57.21 57.28 57.18 57.12 57.22 57.65 57.89];

x = linspace(1885, 1995, 200);
y = Lagrange(xi, fi, x);

plot(x, y);
hold on;

plot(xi, fi, 'o');
hold off;

x_data = [1903 1941 1963 1969 1976 1989 1999];
y_pred = Lagrange(xi, fi, x_data)
y_real = [56.71 57.40 57.25 57.20 56.79 57.69 57.97];

err = norm(y_pred - y_real);
disp(['Interpolation error = ', num2str(err)]);

y_2026 = Lagrange(xi, fi, [2026]);
disp(['2026 year predict temperature = ', num2str(y_2026)]);