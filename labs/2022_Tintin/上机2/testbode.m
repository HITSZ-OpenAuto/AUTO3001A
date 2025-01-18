function testbode(K)
num=[2*K,K]; 
den=conv(conv([1,0],[2.5,1]),[0.04,0.24,1]); 
sys=tf(num,den); 
bode(sys); 
grid;   