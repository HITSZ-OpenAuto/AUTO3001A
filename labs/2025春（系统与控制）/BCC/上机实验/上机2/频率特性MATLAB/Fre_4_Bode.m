function Fre_4_Bode(K)
num = [K];
den = [1,1];
sys = tf(num,den);
bode(sys)
hold on;
end