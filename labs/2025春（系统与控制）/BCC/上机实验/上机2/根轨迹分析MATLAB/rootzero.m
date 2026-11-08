function rootzero(z)
num=[1,-z];
den=[1,2,2,0];
sys=tf(num,den);
rlocus(sys);
axis([-8 2 -6 6]);