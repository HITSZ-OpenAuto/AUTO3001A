T=1;
K=1;
for t=[0.1,0.5,1,5,10]
    num=[K*t,K]; 
    den=[T,-1,0]; 
    sys=tf(num,den); 
    figure(1);
    bode(sys);
    hold on;
end
legend('t=0.1','t=0.5','t=1','t=5','t=10');
grid;