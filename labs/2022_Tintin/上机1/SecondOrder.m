function SecondOrder(omega,zeta)
num=[0 0 omega^2];
den=[1 zeta*omega omega^2];
sys=tf(num, den);
step(sys,[0:0.05:10])
hold on;
x=[0:0.05:10];
y=1;
plot(x,y,'r')