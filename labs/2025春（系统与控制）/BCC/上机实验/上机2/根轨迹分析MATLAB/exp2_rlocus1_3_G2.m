num=[1,5,5];
den=conv([1,1,0],[1,2,2]);
sys=tf(num,den);
rlocus(sys)
axis([-6 2 -4 4]);