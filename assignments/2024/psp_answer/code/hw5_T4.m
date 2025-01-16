%% hw5 T4 用计算机绘制出原系统的单位阶跃响应和增加零点后的系统的单位阶跃响应，就瞬态性能和稳态性能进行比较
clear; clc; close all;

% 系统参数
ksi = 0.7;
wn = 1;

% 原二阶系统 G(s) = wn^2 / (s^2 + 2*ksi*wn*s + wn^2)
sys1 = tf(wn ^ 2, [1, 2 * ksi * wn, wn ^ 2]); % 创建传递函数

% 添加右半平面零点的系统
z = 1; % 右半平面零点
sys2 = tf(wn ^ 2 * [-1, z], [1, 2 * ksi * wn, wn ^ 2]); % 创建传递函数
t = 0:0.01:20;
% 计算单位阶跃响应
[y1, t1] = step(sys1, t);
[y2, t2] = step(sys2, t);

% 绘制单位阶跃响应
figure;
plot(t1, y1, 'b', 'LineWidth', 2); hold on;
plot(t2, y2, 'r', 'LineWidth', 2);
grid on;
xlabel('时间 (s)', 'FontSize', 12);
ylabel('响应 y(t)', 'FontSize', 12);
title('单位阶跃响应比较', 'FontSize', 14);
legend('原二阶系统', '添加零点的系统', 'FontSize', 12);
hold off;

% 计算性能指标
info1 = stepinfo(sys1);
info2 = stepinfo(sys2);

% 显示性能指标比较
fprintf('原二阶系统性能指标:\n');
fprintf('超调量: %.2f%%\n', info1.Overshoot);
fprintf('稳态误差: %.2f\n', abs(1 - y1(end))); % 稳态值为1
fprintf('调节时间: %.2fs\n', info1.SettlingTime);
fprintf('峰值时间: %.2fs\n', info1.PeakTime);

fprintf('添加零点的系统性能指标:\n');
fprintf('超调量: %.2f%%\n', info2.Overshoot);
fprintf('稳态误差: %.2f\n', abs(1 - y2(end))); % 稳态值为1
fprintf('调节时间: %.2fs\n', info2.SettlingTime);
fprintf('峰值时间: %.2fs\n', info2.PeakTime);
