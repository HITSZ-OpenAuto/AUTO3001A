num=[1];
den=conv([1,0],[1,2,2]);
sys=tf(num,den);
rlocus(sys)
axis([-8 2 -6 6]);