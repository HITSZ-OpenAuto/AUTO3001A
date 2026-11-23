num=[1];
den=conv([1,4,0],[1,4,20]);
sys=tf(num,den);
rlocus(sys)
axis([-8 2 -6 6]);