function ef = errfun( y, n )
    f = @(x) exp(-x .* x);
    ef = Simpson(f, 0, y, n);
    ef = ef * 2 / pi;
end

