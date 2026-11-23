function IntegralAndFirstNyquist(K,T)
num = K;
den = [T,1,0];
sys = tf(num,den);
nyquist(sys);
hold on;
end