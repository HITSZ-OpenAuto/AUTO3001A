% % 22-psp
% % 函数定义
% function  [z, t] = SecondOrderFStep(omega, zeta)
% num = [0 0 omega^2];
% den = [1 2*zeta*omega 0];
% g = tf(num, den); % 传递函数
% sys = feedback(g, 1, -1); % 闭环系统
% [z, t] = step(sys, 0:0.02:5);
% end

% % 运行程序
% omega = 5;
% zeta_values = [0, 0.5, 1, 2];  % 各阻尼比值
% legend_labels = {'无阻尼', '欠阻尼', '临界阻尼', '过阻尼'};

% figure(1)
% hold on;
% for i = 1:length(zeta_values)
%     [y, t] = SecondOrderFStep(omega, zeta_values(i));
%     plot(t, y, 'LineWidth', 2);
% end
% legend(legend_labels);
% title('二阶系统单位阶跃响应');
% xlabel('时间 (秒)');
% ylabel('响应');
% grid on;
% hold off;

% % 22-psp
% % 函数定义
% function [z, t] = SecondOrderFImpulse(omega, zeta)
% num = [0 0 omega^2];
% den = [1 2*zeta*omega omega^2];
% g = tf(num, den);  % 传递函数
% sys = feedback(g, 1, -1);  % 闭环系统
% [z, t] = impulse(sys, 0:0.02:3);
% end

% % 运行程序
% omega = 5;
% zeta_values = [0, 0.5, 1, 2];  % 各阻尼比值
% legend_labels = {'无阻尼', '欠阻尼', '临界阻尼', '过阻尼'};

% figure(1)
% hold on;
% for i = 1:length(zeta_values)
%     [y, t] = SecondOrderFImpulse(omega, zeta_values(i));
%     plot(t, y, 'LineWidth', 2);
% end
% legend(legend_labels);
% title('二阶系统单位脉冲响应');
% xlabel('时间 (秒)');
% ylabel('响应');
% grid on;
% hold off;

% % 22-psp
% % 函数定义
% function [z, t] = SecondOrderFStep(omega, zeta)
% num = [0 0 omega^2];
% den = [1 2*zeta*omega omega^2];
% g = tf(num, den);  % 传递函数
% sys = feedback(g, 1, -1);  % 闭环系统
% [z, t] = step(sys, 0:0.02:5);
% end

% % 运行程序
% omega = 5;  % 无阻尼震荡频率
% zeta_values = [0.1, 0.3, 0.5, 0.7, 0.9];  % 欠阻尼系数不同值
% legend_labels = {'zeta=0.1', 'zeta=0.3', 'zeta=0.5', 'zeta=0.7', 'zeta=0.9'};

% figure(1)
% hold on;
% for i = 1:length(zeta_values)
%     [y, t] = SecondOrderFStep(omega, zeta_values(i));
%     plot(t, y, 'LineWidth', 2);
% end

% legend(legend_labels);
% title('欠阻尼二阶系统单位阶跃响应');
% xlabel('时间 (秒)');
% ylabel('响应');
% grid on;
% hold off;

% 22-psp
% % 函数定义
% function [z, t] = SecondOrderFStep(omega, zeta)
% num = [0 0 omega^2];
% den = [1 2*zeta*omega omega^2];
% g = tf(num, den);  % 传递函数
% sys = feedback(g, 1, -1);  % 闭环系统
% [z, t] = step(sys, 0:0.02:3);
% end

% % 运行程序
% zeta = 0.5;  % 固定阻尼比
% omega_values = [2, 5, 14, 15, 20];  % 不同震荡频率
% legend_labels = {'omega=2', 'omega=5', 'omega=14', 'omega=15', 'omega=20'};

% figure(1)
% hold on;
% for i = 1:length(omega_values)
%     [y, t] = SecondOrderFStep(omega_values(i), zeta);
%     plot(t, y, 'LineWidth', 2);
% end

% legend(legend_labels);
% title('固定阻尼比下震荡频率对阶跃响应的影响');
% xlabel('时间 (秒)');
% ylabel('响应');
% grid on;
% hold off;

% 22-psp
% 函数定义
% function [z, t] = SecondOrderFStep(omega, zeta)
% num = [0 0 omega^2];
% den = [1 2*zeta*omega omega^2];
% g = tf(num, den);  % 传递函数
% sys = feedback(g, 1, -1);  % 闭环系统
% [z, t] = step(sys, 0:0.02:5);
% end

% % 运行程序
% k = 1;  % 设定常数 k
% zeta_values = [0.1, 0.3, 0.5, 0.7, 0.9];  % 不同的阻尼比
% omega_values = k ./ zeta_values;  % 计算对应的震荡频率
% legend_labels = {'zeta=0.1', 'zeta=0.3', 'zeta=0.5', 'zeta=0.7', 'zeta=0.9'};

% figure(1)
% hold on;
% for i = 1:length(zeta_values)
%     [y, t] = SecondOrderFStep(omega_values(i), zeta_values(i));
%     plot(t, y, 'LineWidth', 2);
% end

% legend(legend_labels);
% title('阻尼比对动态过程的影响 (zeta * omega = 1)');
% xlabel('时间 (秒)');
% ylabel('响应');
% grid on;
% hold off;

% 22-psp
function [y_step, y_ramp, y_accel, t] = AnalyzeSecondOrderSystem(zeta, t)
omega = 1;
% 定义传递函数
num = [0 0 omega^2];
den = [1 2*zeta*omega omega^2];
g = tf(num, den);
% 阶跃信号的响应
[y_step, t] = step(g, 0:0.01:t);
% 斜坡信号的响应
ramp_signal = t;  % 斜坡信号
y_ramp = lsim(g, ramp_signal, t);
% 加速度信号的响应
accel_signal = t.^2;  % 加速度信号
y_accel = lsim(g, accel_signal, t);
% 计算跟踪误差
error_step = 1 - y_step;
error_ramp = ramp_signal - y_ramp;
error_accel = accel_signal - y_accel;
% 绘制响应曲线和跟踪误差
figure;

% 阶跃响应
subplot(3, 2, 1);
plot(t, y_step, 'LineWidth', 2);  % 响应曲线
hold on;
plot(t, ones(size(t)), 'r--', 'LineWidth', 1.5);  % 激励信号
title('阶跃响应', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('时间 (秒)', 'FontSize', 14, 'FontWeight', 'bold');
ylabel('响应', 'FontSize', 14, 'FontWeight', 'bold');
legend('系统响应', '阶跃激励', 'Location', 'best', 'FontSize', 14, 'FontWeight', 'bold');
grid on;

% 阶跃跟踪误差
subplot(3, 2, 2);
plot(t, error_step, 'LineWidth', 2);
title('阶跃跟踪误差', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('时间 (秒)', 'FontSize', 14, 'FontWeight', 'bold');
ylabel('误差', 'FontSize', 14, 'FontWeight', 'bold');
grid on;

% 斜坡响应
subplot(3, 2, 3);
plot(t, y_ramp, 'LineWidth', 2);  % 响应曲线
hold on;
plot(t, ramp_signal, 'r--', 'LineWidth', 1.5);  % 激励信号
title('斜坡响应', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('时间 (秒)', 'FontSize', 14, 'FontWeight', 'bold');
ylabel('响应', 'FontSize', 14, 'FontWeight', 'bold');
legend('系统响应', '斜坡激励', 'Location', 'best', 'FontSize', 14, 'FontWeight', 'bold');
grid on;

% 斜坡跟踪误差
subplot(3, 2, 4);
plot(t, error_ramp, 'LineWidth', 2);
title('斜坡跟踪误差', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('时间 (秒)', 'FontSize', 14, 'FontWeight', 'bold');
ylabel('误差', 'FontSize', 14, 'FontWeight', 'bold');
grid on;

% 加速度响应
subplot(3, 2, 5);
plot(t, y_accel, 'LineWidth', 2);  % 响应曲线
hold on;
plot(t, accel_signal, 'r--', 'LineWidth', 1.5);  % 激励信号
title('加速度响应', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('时间 (秒)', 'FontSize', 14, 'FontWeight', 'bold');
ylabel('响应', 'FontSize', 14, 'FontWeight', 'bold');
legend('系统响应', '加速度激励', 'Location', 'best', 'FontSize', 14, 'FontWeight', 'bold');
grid on;

% 加速度跟踪误差
subplot(3, 2, 6);
plot(t, error_accel, 'LineWidth', 2);
title('加速度跟踪误差', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('时间 (秒)', 'FontSize', 14, 'FontWeight', 'bold');
ylabel('误差', 'FontSize', 14, 'FontWeight', 'bold');
grid on;

% 调整子图间距
sgtitle(['阻尼比 = ', num2str(zeta)]);
end

% 运行程序
zeta = 0.2;  % 欠阻尼比
t = 30;  % 设定时间
AnalyzeSecondOrderSystem(zeta, t);
