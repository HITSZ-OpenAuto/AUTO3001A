function IntegralAndFirstBode(K,T)
num = K;
den = [T,1,0];
sys = tf(num,den);
bode(sys);
hold on;
end