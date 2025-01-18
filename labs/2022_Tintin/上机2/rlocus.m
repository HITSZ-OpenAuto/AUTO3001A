for  z = [-100, -10, -1, -0.1, -0.01, 0]
    num = [1 -z];
    den = [1 2 2 0];
    sys = tf(num, den);
    figure;
    rlocus(sys);
    figure;
    step(sys/(1+sys));
end