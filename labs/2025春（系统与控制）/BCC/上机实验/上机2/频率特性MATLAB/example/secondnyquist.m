function secondnyquist(T,xi)
num=1;
den=[T^2,2*T*xi,1];
sys=tf(num,den);
nyquist(sys);
axis([-3 3 -6 1]);
hold on;