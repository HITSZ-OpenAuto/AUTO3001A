K=2;
T=1;
num=[K]; 
den1=[T,1]; 
sys1=tf(num,den1); 
nyquist(sys1); 
hold on;
den2=[T,-1]; 
sys2=tf(num,den2); 
nyquist(sys2); 
legend('Ts+1','Ts-1');
grid;