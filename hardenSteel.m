for hour = [1, 8, 24, 48]
    t = hour * 3600;
    x = linspace(0, 0.003, 200);
    n = length(x);
    y = ones(1, n);
    for i = 1:n
        y(i) = carbon(x(i), t);        
    end    
    plot(x, y);
    hold on
end    
xlabel('distance x (in meters) from the surface');
ylabel('the concentration of carbon C(x; t)');
title('the carbon concentration at 1, 8, 24, 48 hour');

legend('hour=1','hour=8','hour=24','hour=48')

hold off




