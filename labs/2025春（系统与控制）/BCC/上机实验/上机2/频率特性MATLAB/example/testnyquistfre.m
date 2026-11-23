function testnyquistfre(K,w)
num=[2*K,K];
den=conv(conv([1,0],[2.5,1]),[4,1,1]);
sys=tf(num,den);
[Re,Im]=nyquist(sys,w)