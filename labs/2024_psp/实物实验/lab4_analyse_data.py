"""
实验4 系统频域特性测试与分析-22-psp
"""

import math

import matplotlib.pyplot as plt

# 定义一个字典来存储数据
data = {
    "omega": [0.5, 1, 2, 3, 5, 10],
    "C": {
        "peak_value": [15.74, 15.96, 15.86, 16.09, 14.31, 12.10],
        "valley_value": [-15.99, -15.61, -15.22, -14.32, -15.11, -11.85],
    },
    "R": {"peak_value": [1, 1, 1, 1, 1, 1], "valley_value": [-1, -1, -1, -1, -1, -1]},
    "C_peak_time": {
        "n": [28.38, 14.12, 7.19, 4.85, 2.93, 1.53],
        "n+1": [40.75, 20.42, 10.24, 6.90, 4.19, 2.15],
        "n+2": [52.60, 26.70, 13.33, 8.98, 5.44, 2.79],
    },
    "R_peak_time": {
        "n": [28.35, 14.11, 7.11, 4.75, 2.85, 1.41],
        "n+1": [40.70, 20.39, 10.20, 6.82, 4.11, 2.06],
        "n+2": [52.53, 26.66, 13.30, 8.87, 5.29, 2.69],
    },
}


def calculate_db(value):
    """
    计算20lg(value)
    """
    return 20 * math.log10(value)


def normalize_phase_angle(angle):
    """
    标准化相位角到 -180 到 180 度之间
    """
    while angle > 180:
        angle -= 360
    while angle < -180:
        angle += 360
    return angle


# 初始化结果列表
db_C, db_R, db_L, phi_w = [], [], [], []

# 遍历每个频率
for i, omega in enumerate(data["omega"]):
    # 计算C的平均绝对值
    C_avg = (abs(data["C"]["peak_value"][i]) + abs(data["C"]["valley_value"][i])) / 2
    # 计算R的平均绝对值
    R_avg = (abs(data["R"]["peak_value"][i]) + abs(data["R"]["valley_value"][i])) / 2

    # 计算20lgC 和 20lgR
    db_C.append(calculate_db(C_avg))
    db_R.append(calculate_db(R_avg))

    # 计算L=C/R 并求20lgL
    L = C_avg / R_avg
    db_L.append(calculate_db(L))

    # 计算Phi(w) 三个周期的平均值, t1 - t2 = R_peak_time - C_peak_time
    t_diff_avg = (
        sum(
            [
                data["R_peak_time"]["n"][i] - data["C_peak_time"]["n"][i],
                data["R_peak_time"]["n+1"][i] - data["C_peak_time"]["n+1"][i],
                data["R_peak_time"]["n+2"][i] - data["C_peak_time"]["n+2"][i],
            ]
        )
        / 3
    )
    phi = omega * t_diff_avg * 360 / (2 * math.pi)
    phi_w.append(normalize_phase_angle(phi))

# 打印结果
print(f"20lgC: {db_C}")
print(f"20lgR: {db_R}")
print(f"20lgL: {db_L}")
print(f"Phi(w): {phi_w}")


# 绘制Bode图
plt.figure(figsize=(12, 6))

# 增益图
plt.subplot(2, 1, 1)
plt.semilogx(data["omega"], db_L, marker="o", linestyle="-")
plt.title("Bode Plot of Open-loop System")
plt.ylabel("Magnitude (dB)")
plt.grid(True, which="both", ls="--")

# 相位图
plt.subplot(2, 1, 2)
plt.semilogx(data["omega"], phi_w, marker="o", linestyle="-")
plt.xlabel("Frequency (rad/s)")
plt.ylabel("Phase (degrees)")
plt.grid(True, which="both", ls="--")

plt.tight_layout()
plt.show()
