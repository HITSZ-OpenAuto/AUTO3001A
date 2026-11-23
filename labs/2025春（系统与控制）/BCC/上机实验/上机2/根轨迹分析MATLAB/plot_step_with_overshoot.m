function plot_step_with_overshoot(sys, k)
% plot_step_with_overshoot 画闭环系统阶跃响应，并在图上标出超调率
%
% 用法:
%   plot_step_with_overshoot(sys, k)
%
% 输入:
%   sys —— 开环传递函数 (tf对象)
%   k   —— 增益 (数值)

    % 构造单位负反馈闭环系统
    sys_cl = feedback(k * sys, 1);
    
    % 获取阶跃响应数据
    [y, t] = step(sys_cl);
    info = stepinfo(sys_cl);
    
    % 找到最大值和对应时间
    [max_val, idx_max] = max(y);
    t_max = t(idx_max);

    % 绘制阶跃响应曲线
    figure;
    plot(t, y, 'b', 'LineWidth', 1.5);
    grid on;
    title(sprintf('阶跃响应 (k = %.2f)', k));
    xlabel('时间 (s)');
    ylabel('输出响应');
    
    % 标注超调率
    % 把文字稍微放到最大值上方，不挡住曲线
    text(t_max, max_val + 0.05*max(y), ...
        sprintf('超调率 = %.2f%%', info.Overshoot), ...
        'HorizontalAlignment', 'center', ...
        'FontSize', 10, 'Color', 'red', 'BackgroundColor', 'white', 'EdgeColor', 'black');
end
