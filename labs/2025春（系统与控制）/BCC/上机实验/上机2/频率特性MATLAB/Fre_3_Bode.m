function Fre_3_Bode(T)
num = [1];
den = [T,1];
sys = tf(num,den);
bode(sys)
grid;
hold on;
end