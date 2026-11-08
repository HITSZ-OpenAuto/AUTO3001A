function SecondOrderBode(T,zeta)
num = 1;
den = [T^2,2*T*zeta,1];
sys = tf(num,den);
bode(sys);
hold on;
end