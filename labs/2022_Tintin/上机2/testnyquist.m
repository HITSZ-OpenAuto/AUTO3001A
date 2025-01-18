function testnyquist(K)
num=[2*K,K]; 
den=conv(conv([1,0],[2.5,1]),[4,1,1]); 
sys=tf(num,den); 
nyquist(sys);