function Fre3_Nyquist(T)
num = [1];
den = [T,1];
sys = tf(num,den);
nyquist(sys)
hold on;
end