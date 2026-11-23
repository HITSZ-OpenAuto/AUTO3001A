num = [1,2,4];
den = conv(conv([1,4,0],[1,6]),[1,1.4,1]);
sys = tf(num, den);

figure;
rlocus(sys);
grid on;
axis([-8 2 -6 6]);