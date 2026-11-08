num=[1,2,4];
den=conv(conv([1,4,0],[1,6]),[1,1.4,1]);
sys=tf(num,den);
rlocus(sys)
grid
[k, poles] = rlocfind(sys);
axis([-8 2 -6 6]);
sys_cl = feedback(k*sys, 1);
step(sys_cl); 