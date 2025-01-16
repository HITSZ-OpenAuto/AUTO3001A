%% hw5 T3 用计算机绘制出原系统的单位阶跃响应，和近似系统的单位阶跃响应，比较二者的相关性能指标
clear; clc; close all;
t = 0:0.01:10;

% 原三阶系统 T(s) = 8 / (s + 2)^3
sys1 = tf(8, [1 6 12 8]);
[y1, t1] = step(sys1, t); % 计算单位阶跃响应

% 近似二阶系统 G_L(s) = 1 / (1 + 1.271s + 0.433s^2)
sys2 = tf(1, [0.433 1.271 1]);
[y2, t2] = step(sys2, t); % 计算单位阶跃响应

% 计算性能指标
overshoot1 = (max(y1) - 1) * 100; % 超调量（ %）
settling_time1 = stepinfo(sys1).SettlingTime; % 稳定时间
rise_time1 = stepinfo(sys1).RiseTime; % 上升时间

overshoot2 = (max(y2) - 1) * 100; % 超调量（ %）
settling_time2 = stepinfo(sys2).SettlingTime; % 稳定时间
rise_time2 = stepinfo(sys2).RiseTime; % 上升时间

% 绘图
figure;
plot(t1, y1, 'b', 'LineWidth', 2); hold on;
plot(t2, y2, 'g', 'LineWidth', 2);
grid on;
xlabel('时间 (s)', 'FontSize', 14);
ylabel('响应 y(t)', 'FontSize', 14);
title('单位阶跃响应比较', 'FontSize', 14);
legend('三阶系统 y_1(t)', '近似二阶系统 y_2(t)', 'FontSize', 14);
hold off;

% 输出性能指标
fprintf('三阶系统性能指标 y_1(t):\n');
fprintf('超调量: %.2f%%\n', overshoot1);
fprintf('调节时间: %.2f s\n', settling_time1);
fprintf('上升时间: %.2f s\n', rise_time1);

fprintf('近似二阶系统性能指标 y_2(t):\n');
fprintf('超调量: %.2f%%\n', overshoot2);
fprintf('调节时间: %.2f s\n', settling_time2);
fprintf('上升时间: %.2f s\n', rise_time2);
