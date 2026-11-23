function Fre_4_Nyquist(K)
num = [K];
den = [1,1];
sys = tf(num,den);
nyquist(sys)
hold on;
end