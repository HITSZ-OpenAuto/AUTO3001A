# AUTO3001A - 自动控制理论 A

<div align="left">
<figure>
  <img alt="考试课" src="https://img.shields.io/badge/%E8%80%83%E8%AF%95%E8%AF%BE-red" >
  <img alt="学分 4.5（21、22级）" src="https://img.shields.io/badge/%E5%AD%A6%E5%88%86%ef%bc%8821%e3%80%8122%e7%ba%a7%ef%bc%89-4.5-moccasin">
  <img alt="学分 2.0（23级开始）" src="https://img.shields.io/badge/%E5%AD%A6%E5%88%86%ef%bc%8823%e7%ba%a7%e5%bc%80%e5%a7%8b%ef%bc%89-2.0-moccasin">
</figure>
</div>

<div align="left">
<figure>
  <img alt="成绩构成(21/22级)" src="https://img.shields.io/badge/%E6%88%90%E7%BB%A9%E6%9E%84%E6%88%90(21/22%E7%BA%A7)-gold">
  <img alt="Static Badge" src="https://img.shields.io/badge/%E4%BD%9C%E4%B8%9A-13%25-wheat">
  <img alt="Static Badge" src="https://img.shields.io/badge/%E8%AF%BE%E5%A0%82%E8%A1%A8%E7%8E%B0-5%25-wheat">
  <img alt="Static Badge" src="https://img.shields.io/badge/%E4%B8%8A%E6%9C%BA%E5%AE%9E%E9%AA%8C-4%25-wheat">
  <img alt="Static Badge" src="https://img.shields.io/badge/%E7%A1%AC%E4%BB%B6%E5%AE%9E%E9%AA%8C-8%25-wheat">
  <img alt="Static Badge" src="https://img.shields.io/badge/%E6%9C%9F%E6%9C%AB%E8%80%83%E8%AF%95-70%25-wheat">
</figure>
</div>

*注意：本页面资料全部对应4.5学分的原课程，查找《系统与控制》资料的同学可根据当前授课及作业内容自行选用本仓库资料。*
|课程名称|开课专业|开课学期|学分|主要内容|
|--------|---|---|-|---------|
|**原**自动控制理论A|自动化|大三秋|4.5|线性系统数学模型、线性系统时域分析、根轨迹分析、频域稳定性分析|
|**原**自动控制理论|电气|大二春|3.0|线性连续系统数学模型、线性连续系统时域分析、根轨迹分析、频域分析与校正、非线性系统分析|
|**新**系统与控制|自动化与电气工程|大二春|3.0|线性连续系统数学模型、线性连续系统时域分析、根轨迹分析、频域稳定性分析|
|**新**自动控制理论A|自动化|大三秋|2.0|线性离散系统建模与时域分析、状态空间表达式建模与时域分析、Lyapunov稳定性分析|

## 教材和参考书

自动控制理论是控制科学与工程的考研科目之一，哈工大指定的 801 考试参考书目为：

1. [自动控制原理（上下册）](https://hitpress.hit.edu.cn/2020/1229/c12593a250620/page.htm). 裴润, 宋申民. 哈尔滨工业大学出版社. 2006
2. 自动控制原理（第七版）. 胡寿松. 科学出版社. 2019（现在已经有[第八版](https://www.ecsponline.com/goods.php?id=221880)了）
3. 现代控制理论. 刘豹, 唐万生. 机械工业出版社. 2006

张宏伟老师推荐了 3 本质量非常高的国外的教材：

1. [*Modern Control Systems 14th Edition*](https://www.amazon.co.uk/Modern-Control-Systems-Global-Richard/dp/1292422378).
Richard Dorf, Robert Bishop. Pearson. 2021.
中译本《现代控制系统》
2. [*Modern Control Engineering 5th Edition*](https://www.amazon.co.uk/Modern-Control-Engineering-Katsuhiko-Ogata/dp/0136156738).
K.Ogata. Pearson. 2009.
中译本《现代控制工程》
3. [*Feedback Control of Dynamic Systems 8th Edition*](https://www.amazon.co.uk/Feedback-Control-Dynamic-Systems-Global/dp/1292274522).
G.Franklin, J.Powell, A.Emami-Naeini. Pearson. 2019.
中译本《自动控制原理与设计》

以上 3 本的英文版和中译版在深圳大学城图书馆均有纸质馆藏，只是版本未必最新。

张老师还推荐了王天威（B 站 [DR_CAN](https://space.bilibili.com/230105574)）的[《控制之美（卷1）》](http://www.tup.tsinghua.edu.cn/booksCenter/book_10856501.html)，作为科普也很不错。

## 授课教师

- 张宏伟
  - 负责前半部分的教学
  - 上课和聊天一样，会将知识引申到课外的领域中
  - 考勤频率低
- 张颖
  - 负责后半部分的教学
  - 教学节奏较慢，有一种回到中学课堂的感觉
  - 几乎每节课都会考勤点名，一次点名一个班

> 文 / [Maxwell Jay](https://github.com/MaxwellJay256), 2025.1

张宏伟老师上课以吹水为主，对于想快速掌握本课程知识而不想浪费时间的同学，不建议听课。

> 文 / [Oliver Wu](https://github.com/OliverWu515), 2025.2

张宏伟老师上课思维发散，逻辑比较跳脱，但是例题有给比较充分时间上课完成，且对例题比较好的讲解；

张颖老师上课思维较为连贯，但是上课速度缓慢，掰碎了生怕大家听不懂，PPT有大量的例题但是并没有给时间完成，实际效果可能也没有那么好。

> 文 / [Gaster](https://github.com/WDGaster), 2025.6

## 关于授课内容
> 以下为 22 级以前 4.5 学分的授课内容，23 级授课内容参考[系统与控制](https://hoa.moe/docs/sophomore-spring/ee2005/)。

{{% details title="理论授课（60 学时）" closed="true" %}}
- 绪论（2 学时）
  - 控制论的历史
  - 控制系统的基本概念、基本结构和组成、基本要求
- 控制系统的数学模型（14 学时）
  - 微分方程和传递函数（4 学时）
  - 方框图和信号流图（4 学时）
  - 离散系统建模（4 学时）
  - 系统的状态空间表达式（2 学时）
- 控制系统的时域分析（14 学时）
  - 连续系统时域分析（8 学时）
  - 离散系统时域分析（2 学时）
  - 状态空间表达式的时域分析（4 学时）
- 控制系统的稳定性及稳态误差（16 学时）
  - 连续系统的稳定性及劳斯判据（2 学时） 
  - 离散系统稳定性及劳斯判据（2 学时）
  - 稳态误差分析（4 学时）
  - Lyapunov 稳定性分析（4 学时）
  - 基于根轨迹法的稳定性分析（4 学时）
- 控制系统的频域分析（8 学时）
  - 线性系统的频率特性（4 学时）
  - 频域稳定性分析和奈奎斯特判据（4 学时）
{{% /details %}}
{{% details title="实验（8 学时）" closed="true" %}}
- 实验一：直流伺服系统的时域特性分析
- 实验二：连续系统和离散系统的稳定性分析
- 实验三：直流伺服系统的根轨迹分析
- 实验四：直流伺服系统的频率特性分析
{{% /details %}}
{{% details title="上机实验（4 学时）" closed="true" %}}
- 上机一：控制系统的模型描述与时域分析
- 上机二：线性系统的根轨迹和频域分析
{{% /details %}}

## 关于作业

- 自控理论的作业布置频率较高，基本上每周一次
- 张宏伟老师的作业题目有一部分是原创的，颇具挑战性
- 张颖老师的作业基本来自教材课后题，难度适中

> 文 / [Maxwell Jay](https://github.com/MaxwellJay256), 2025.1

## 关于考试

2024 年的期末考试题目明显出得很难，但出分时大家发现比想象的高。
因此深圳校区的考试难度我暂时得不出结论。

对考试分数有要求的话，建议找考研题来做。

> 文 / [Maxwell Jay](https://github.com/MaxwellJay256), 2025.1

同上，想多练练手就刷本校考研题。因为我们学校的考试风格与考研题接近。

> 文 / [Oliver Wu](https://github.com/OliverWu515), 2025.2

看来 24 秋的期末像是一次意外，25 春考试（虽然只有线性连续部分）又回归了往年的难度，难度低于考研题。

> 文 / [Gaster](https://github.com/WDGaster), 2025.6

## 学习建议

课程并没有指定使用哪本书作为教材，相反，**你应该尽量向不同的参考书学习**。
同一个知识点，不同的书会有不同的解释，可以帮助你更好地理解。

而且自动控制理论作为考研科目，知识体系相对成熟，网络资源也很丰富。

- [卢老爷带你学系列| 深入浅出《自动控制原理》（已完结）- bilibili](https://space.bilibili.com/443689502/lists/1784905)
- [【自动控制原理】_DR_CAN合集 - bilibili](https://space.bilibili.com/230105574/lists/1814627)
- [《自动控制原理 480 题》哈尔滨工业大学出版社](https://hitpress.hit.edu.cn/2017/1213/c12593a195955/page.htm)

如果在备考时感觉某类题型弄不明白，直接在网上搜索基本上都有结果。

> 文 / [Maxwell Jay](https://github.com/MaxwellJay256), 2025.1

如果想更深入学习控制理论，可以参考[Gaster的控制理论笔记](https://github.com/WDGaster703/ControlTheory)和[SSC的电机驱动学习笔记](https://github.com/SSC202/Engine/tree/V3.0/Note/)。

> 文 / [Gaster](https://github.com/WDGaster703)，2025.6