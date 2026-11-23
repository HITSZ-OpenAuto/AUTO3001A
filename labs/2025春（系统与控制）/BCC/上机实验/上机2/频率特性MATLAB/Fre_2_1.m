num = 1; %k = 1
den1 = [1,1]; %T = 1
den2 = [1,-1];
FirstorderPostive = tf(num,den1);
FirstorderNegtive = tf(num,den2);
nyquist(FirstorderPostive)
hold on;
nyquist(FirstorderNegtive)