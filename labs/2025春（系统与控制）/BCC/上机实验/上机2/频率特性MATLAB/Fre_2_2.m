num = 1; %k = 1
den1 = [1,1]; %T = 1
den2 = [1,-1];
FirstorderPositive = tf(num,den1);
FirstorderNegative = tf(num,den2);
bode(FirstorderPositive)
hold on;
bode(FirstorderNegative)