function Fre_9_Nyquist(K,T,t)
num = [K*t,K];
den = [T,-1,0];
sys = tf(num,den);
nyquist(sys)
hold on;
end