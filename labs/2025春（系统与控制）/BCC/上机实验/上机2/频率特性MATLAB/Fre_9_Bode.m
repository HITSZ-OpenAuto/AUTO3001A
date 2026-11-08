function Fre_9_Bode(K,T,t)
num = [K*t,K];
den = [T,-1,0];
sys = tf(num,den);
bode(sys)
hold on;
end