%% 2.2 线性系统的频率特性分析
clc; clear; close all;

%%% 2.2.1
% K = 1;
% T = 1;
% % 定义最小相位系统的惯性环节
% num1 = K;
% den1 = [T, 1];
% sys1 = tf(num1, den1);
% % 绘制最小相位系统的惯性环节的 Nyquist 曲线
% nyquist(sys1);
% hold on;
% % 定义非最小相位系统的惯性环节
% num2 = K;
% den2 = [T, -1];
% sys2 = tf(num2, den2);
% % 绘制非最小相位系统的惯性环节的 Nyquist 曲线
% nyquist(sys2);
% axis([-1.2, 1.2, -0.75, 0.75]);
% legend('最小相位环节', '非最小相位环节');
% hold off;

%%% 2.2.2
% K = 1;
% T = 1;
% % 定义最小相位系统的惯性环节
% num1 = K;
% den1 = [T, 1];
% sys1 = tf(num1, den1);
% % 绘制最小相位惯性环节 Bode 图
% bode(sys1);
% hold on;
% % 定义非最小相位系统的惯性环节
% num2 = K;
% den2 = [T, -1];
% sys2 = tf(num2, den2);
% % 绘制非最小相位惯性环节 Bode 图
% bode(sys2);
% legend('最小相位环节', '非最小相位环节');
% hold off;

%%% 2.2.3
% K = 1;
% num = K;
% %绘制 Nyquist 图
% for T = [0.01, 0.1, 1, 10, 100]
%     %定义一阶惯性环节传递函数
%     den = [T, 1];
%     sys = tf(num, den);
%     figure(1);
%     nyquist(sys);
%     hold on;
% end

% figure(1);
% legend('T=0.01', 'T=0.1', 'T=1', 'T=10', 'T=100');
% hold off;
% %绘制 Bode 图
% for T = [0.01, 0.1, 1, 10, 100]
%     %定义一阶惯性环节传递函数
%     den = [T, 1];
%     sys = tf(num, den);
%     figure(2);
%     bode(sys);
%     hold on;
% end

% figure(2);
% legend('T=0.01', 'T=0.1', 'T=1', 'T=10', 'T=100');
% hold off;

%%% 2.2.4
% T = 1;
% %定义传递函数分母系数
% den = [T, 1];
% %绘制 Nyquist 图
% for K = [1, 5, 10, 20, 30]
%     %定义一阶惯性环节传递函数
%     num = K;
%     sys = tf(num, den);
%     figure(1);
%     nyquist(sys);
%     hold on;
% end

% figure(1);
% legend('K=1', 'K=5', 'K=10', 'K=20', 'K=30');
% hold off;
% %绘制 Bode 图
% for K = [1, 5, 10, 20, 30]
%     %定义一阶惯性环节传递函数
%     num = K;
%     sys = tf(num, den);
%     figure(2);
%     bode(sys);
%     hold on;
% end

% figure(2);
% legend('K=1', 'K=5', 'K=10', 'K=20', 'K=30');
% hold off;

%%% 2.2.5
% T = 1;
% %定义传递函数分子系数
% num = 1;
% %绘制 Nyquist 图
% for sigma = [0.1, 0.3, 0.5, 0.707, 0.9]
%     %定义二阶振荡环节传递函数
%     den = [T * T, 2 * T * sigma, 1];
%     sys = tf(num, den);
%     figure(1);
%     nyquist(sys);
%     hold on;
% end

% figure(1);
% legend('阻尼比=0.1', '阻尼比=0.3', '阻尼比=0.5', '阻尼比=0.707', '阻尼比=0.9');
% hold off;
% %绘制 Bode 图
% for sigma = [0.1, 0.3, 0.5, 0.707, 0.9]
%     %定义二阶振荡环节传递函数
%     den = [T * T, 2 * T * sigma, 1];
%     sys = tf(num, den);
%     figure(2);
%     bode(sys);
%     hold on;
% end

% figure(2);
% legend('阻尼比=0.1', '阻尼比=0.3', '阻尼比=0.5', '阻尼比=0.707', '阻尼比=0.9');
% hold off;

%%% 2.2.6
% sigma = 0.5;
% %定义传递函数分子系数
% num = 1;
% %绘制 Nyquist 图
% for T = [0.1, 1, 5, 10, 20]
%     %定义二阶振荡环节传递函数
%     den = [T * T, 2 * T * sigma, 1];
%     sys = tf(num, den);
%     figure(1);
%     nyquist(sys);
%     hold on;
% end

% figure(1);
% legend('T=0.1', 'T=1', 'T=5', 'T=10', 'T=20');
% hold off;
% %绘制 Bode 图
% for T = [0.1, 1, 5, 10, 20]
%     %定义二阶振荡环节传递函数
%     den = [T * T, 2 * T * sigma, 1];
%     sys = tf(num, den);
%     figure(2);
%     bode(sys);
%     hold on;
% end

% figure(2);
% legend('T=0.1', 'T=1', 'T=5', 'T=10', 'T=20');
% hold off;

%%% 2.2.7
% K = 1;
% % 定义传递函数分子系数
% num = K;
% % 绘制 Nyquist 图
% for T = [0.1, 0.5, 1, 2, 5]
%     den = [T, 1, 0];
%     sys = tf(num, den);
%     figure(1);
%     nyquist(sys);
%     hold on;
% end

% figure(1);
% legend('T=0.1', 'T=0.5', 'T=1', 'T=2', 'T=5');
% hold off;
% % 绘制 Bode 图
% for T = [0.1, 0.5, 1, 2, 5]
%     den = [T, 1, 0];
%     sys = tf(num, den);
%     figure(2);
%     bode(sys);
%     hold on;
% end

% figure(2);
% legend('T=0.1', 'T=0.5', 'T=1', 'T=2', 'T=5');
% hold off;

%%% 2.2.8
% T = 1;
% % 绘制 Nyquist 图
% for K = [0.1, 0.5, 1, 2, 5]
%     % 定义传递函数
%     num = K;
%     den = [T, 1, 0];
%     sys = tf(num, den);
%     figure(1);
%     nyquist(sys);
%     hold on;
% end

% figure(1);
% legend('K=0.1', 'K=0.5', 'K=1', 'K=2', 'K=5');
% hold off;
% %绘制 Bode 图
% for K = [0.1, 0.5, 1, 2, 5]
%     % 定义传递函数
%     num = K;
%     den = [T, 1, 0];
%     sys = tf(num, den);
%     figure(2);
%     bode(sys);
%     hold on;
% end

% figure(2);
% legend('K=0.1', 'K=0.5', 'K=1', 'K=2', 'K=5');
% grid on;
% hold off;

% %%% 2.2.9
% T = 1;
% Tau = 1;
% %绘制 Nyquist 图
% for K = [0.1, 0.5, 1, 2, 5]
%     %定义传递函数
%     num = [K * Tau, K];
%     den = [T, -1, 0];
%     sys = tf(num, den);
%     figure(1);
%     nyquist(sys);
%     hold on;
% end

% figure(1);
% legend('K=0.1', 'K=0.5', 'K=1', 'K=2', 'K=5');
% hold off;
% %绘制 Bode 图
% for K = [0.1, 0.5, 1, 2, 5]
%     %定义传递函数
%     num = [K * Tau, K];
%     den = [T, -1, 0];
%     sys = tf(num, den);
%     figure(2);
%     bode(sys);
%     hold on;
% end

% figure(2);
% legend('K=0.1', 'K=0.5', 'K=1', 'K=2', 'K=5');
% grid on;
% hold off;

% T = 1;
% K = 1;
% % 绘制 Nyquist 图
% for Tau = [0.1, 0.5, 1, 2, 5]
%     % 定义传递函数
%     num = [K * Tau, K];
%     den = [T, -1, 0];
%     sys = tf(num, den);
%     figure(1);
%     nyquist(sys);
%     hold on;
% end

% figure(1);
% legend('Tau=0.1', 'Tau=0.5', 'Tau=1', 'Tau=2', 'Tau=5');
% hold off;

% % 绘制 Bode 图
% for Tau = [0.1, 0.5, 1, 2, 5]
%     % 定义传递函数
%     num = [K * Tau, K];
%     den = [T, -1, 0];
%     sys = tf(num, den);
%     figure(2);
%     bode(sys);
%     hold on;
% end

% figure(2);
% legend('Tau=0.1', 'Tau=0.5', 'Tau=1', 'Tau=2', 'Tau=5');
% grid on;
% hold off;
