%% 2.1 基于根轨迹的性能分析
clc; clear; close all;

% num = [1, 2, 4];
% den = conv(conv([1, 4, 0], [1, 6]), [1, 1.4, 1]);
% sys = tf(num, den);
% figure(1);
% step(sys / (1 + sys));
% figure(2);
% rlocus(sys);
% axis([-8, 2, -6, 6])
% [k, phase] = rlocfind(sys);

% num1 = 1;
% den1 = conv([1, 4, 0], [1, 4, 20]);
% sys1 = tf(num1, den1);
% figure(3);
% step(sys1 / (1 + sys1));
% figure(4);
% rlocus(sys1);
% axis([-8, 2, -6, 6])
% [k1, phase1] = rlocfind(sys1)

% num2 = [1 5 5];
% den2 = conv([1, 1, 0], [1, 2, 2]);
% sys2 = tf(num2, den2);
% figure(4);
% step(sys2 / (1 + sys2));
% figure(5);
% rlocus(sys2);
% axis([-5, 2, -6, 6])
% [k2, phase2] = rlocfind(sys2)

% num = [1, 2, 4];
% den = conv(conv([1, 4, 0], [1, 6]), [1, 1.4, 1]);
% sys = tf(num, den);
% figure(1);
% step(sys / (1 + sys));
% figure(2);
% rlocus(sys);
% grid("on");
% axis([-8, 2, -6, 6])
% [k, phase] = rlocfind(sys);
% figure(2);
% step(2.95 * sys / (1 + 2.95 * sys));
% grid on;

% num1 = 1;
% den1 = conv([1, 4, 0], [1, 4, 20]);
% sys1 = tf(num1, den1);
% figure(8);
% rlocus(sys1);
% grid("on");
% axis([-8, 2, -6, 6])
% grid on;
% figure(9);
% step((116 * sys1) / (1 + 116 * sys1));
% grid on;

% num2 = [1 5 5];
% den2 = conv([1, 1, 0], [1, 2, 2]);
% sys2 = tf(num2, den2);
% figure(10);
% rlocus(sys2);
% axis([-5, 2, -6, 6])
% grid on;
% [k, phase] = rlocfind(sys2);
% figure(11);
% step((0.358*sys2)/(1+0.358*sys2));
% grid on;

% 不含零点的开环传递函数
den3 = [1 2 2 0];
sys_no_zero = tf(1, den3);
figure;
rlocus(sys_no_zero);
title('不含零点的根轨迹');
grid on;
figure;
step(sys_no_zero / (1 + sys_no_zero));
title('不含零点的闭环阶跃响应');
grid on;

% 对每个零点画出根轨迹并与不含零点时的根轨迹进行比较
for z1 = [-100, -10, -1, -0.1, -0.01, 0]
    num3 = [1 -z1];
    sys3 = tf(num3, den3);
    % 画出含零点的根轨迹
    figure;
    rlocus(sys3);
    title(['含零点 z = ', num2str(z1), ' 的根轨迹']);
    grid on;
    % 画出闭环系统的阶跃响应
    figure;
    step(sys3 / (1 + sys3));
    title(['含零点 z = ', num2str(z1), ' 的闭环阶跃响应']);
    grid on;
end
