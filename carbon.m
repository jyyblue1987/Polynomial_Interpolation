function C = carbon(x, t)
    C0 = 0.003;
    CS = 0.08;
    D = 1.75e-11;
    
    C = CS - (CS - C0) * errfun(x / sqrt(4 * D * t), 1000);
end

