[![Build Status](https://travis-ci.org/yihui/MSG.svg)](https://travis-ci.org/yihui/MSG)

This is an R package for my Chinese book _Modern Statistical Graphics_, which is hosted in the repo <https://github.com/XiangyunHuang/MSG-Book>.

这是为《[现代统计图形](https://msg2020.pzhao.org)》一书编写的 R 附加包 **MSG**（Modern Statistical Graphics 的缩写）。该包目前已经发布到 CRAN，所以读者可以用以下方式直接安装：

```r
install.packages("MSG")
```

或者安装开发版：

```r
remotes::install_github("yihui/MSG")
```

在 R 中加载：

```r
library("MSG")
```

这里，我们简要介绍一下它包含的函数和数据。更为详细的信息见帮助文档或《[现代统计图形](https://msg2020.pzhao.org)》一书。

## 函数说明 {#sec:MSG-fun}

`andrews_curve()`
: 根据数据矩阵画调和曲线图。

`char_gen()`
: 给定一个长度为 2 的字符向量，生成一个字符矩阵，其中包含若干个第 2 个字符和一个第 1 个字符，看用户从一大堆第 2 个字符中辨别第 1 个字符的难度。这可以是我们选择点的外观的一种依据。

`cut_plot()`
: 将一幅散点图的横坐标离散化，并计算每组内点的纵坐标的均值。

`heart_curve()`
: 画心形曲线，用作低层作图函数的练习。

`msg()`
: 重现书中插图及其源代码。

`vec2col()`
: 将一个向量通过 **RColorBrewer** 包中的调色板转化为颜色向量。

## 数据说明


`assists`
: 湖人和骑士比赛中的助攻数据。

`BinormCircle`
: 人造数据：两个独立的正态分布随机变量（10000 行实现值），加上半径为 0.5 的圆上的点的坐标（10000 行）。

`canabalt`
: 游戏末日狂奔中的得分和游戏设备数据（从 Twitter 消息获得）。

`ChinaLifeEdu`
: 2005 年中国各省市的人均预期寿命和受高等教育人数。

`cn_vs_us`
: 中美国力对比数据。

`eq2010`
: 四川省在 2010 年的地震数据，包括发生地点的经纬度和震级。

`Export.USCN`
: 1994 年到 2004 年中美出口额数据。

`gov.cn.pct`
: 中国政府网站中出现的各个百分比数据的频数（2009 年 12 月 17 日通过 Google 抓取）。

`murcia`
: 西班牙 Murcia 省的土壤成分数据。

`music`
: 四类艺术家的音乐频率数据，两类来自古典乐，两类来自摇滚乐。

`PlantCounts`
: 植物数目与海拔高度的数据，共两列，每一行数据记录了某一海拔高度上植物数目。

`quake6`
: 1973 年到 2010 年全球地震中超过 6 级的地震数据，包括经度、纬度、时间等信息。

`tvearn`
: 2011 年 2 月最高收入的美剧演员数据，包括收入、电视剧类型、性别、电视剧评分等信息。
