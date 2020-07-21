# 女书输入法<br/>Nushu Input Method

**使用女书输入法，简便地输入 Unicode 编码的 396 个女书字符。<br/>Use the Nushu Input Method to easily input the 396 Nushu characters encoded in Unicode**

女书输入法是[在线女书字典](https://nushuscript.org/)项目的一部分。<br/>The Nushu Input Method is a part of the [Online Nushu Dictionary](https://nushuscript.org/) project.

## 用法<br/>Usage

使用江永方言拼音输入女书字<br/>Input Nushu by the romanization of Jiangyong dialect

![](demo/demo.png)

使用汉语拼音（普通话）输入汉字对应的女书字<br/>Input Nushu by _pinyin_ (the romanization of _Putonghua_, i.e. standard Chinese)

![](demo/demo1.png)

## 安装方法<br/>Installation

见本项目 [Wiki](https://github.com/nushu-script/rime-nushu/wiki)。<br/>See project [Wiki](https://github.com/nushu-script/rime-nushu/wiki).

- [Windows 安装方法<br/>Windows Installation](https://github.com/nushu-script/rime-nushu/wiki/Windows-%E5%AE%89%E8%A3%85%E6%96%B9%E6%B3%95-%7C-Windows-Installation)
- [macOS 安装方法<br/>macOS Installation](https://github.com/nushu-script/rime-nushu/wiki/macOS-%E5%AE%89%E8%A3%85%E6%96%B9%E6%B3%95-%7C-macOS-Installation)
- [Arch Linux 安装方法<br/>Arch Linux Installation](https://github.com/nushu-script/rime-nushu/wiki/Arch-Linux-%E5%AE%89%E8%A3%85%E6%96%B9%E6%B3%95-%7C-Arch-Linux-Installation)

## 资料来源<br/>Data Sources

- `opencc/s2nushu.txt` 中的资料参考了赵丽明、徐焰《[女书规范字书法字帖](https://book.douban.com/subject/27045237/)》<br/>Data in `opencc/s2nushu.txt` reference to [_Calligraphy Copybook of Nushu Standard Characters_](https://book.douban.com/subject/27045237/) compiled by Zhao Liming and Xu Yan
- `nushu.dict.yaml` 中的资料参考了 [Unicode Character Database](http://www.unicode.org/Public/11.0.0/ucd/NushuSources-11.0.0d1.txt)<br/>Data in `nushu.dict.yaml` reference to the [Unicode Character Database](http://www.unicode.org/Public/11.0.0/ucd/NushuSources-11.0.0d1.txt)

## 关于女书拼音的说明<br/>Notes on the Romanization of Nushu

本输入法所使用的女书拼音基于江永城关话音系。

下述的女书拼音并非完整的江永城关话音系，仅是为输入女书字符而设定。

记号说明：

- **I**: 国际音标 | IPA
- **U**: Unicode Character Database 使用的表记方法 | Notation in the Unicode Character Database
- **N**: 女书输入法设定的表记方法 | Notation in Nushu Input Method

### 声母<br/>Initials

| I    | U    | N    |      | I    | U    | N    |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| p    | p    | b    |      | tsʰ  | tsh  | c    |
| pʰ   | ph   | p    |      | s    | s    | s    |
| m    | m    | m    |      | tɕ   | tc   | j    |
| f    | f    | f    |      | tɕʰ  | tch  | q    |
| v    | v    | v    |      | ȵ    | nj   | nj   |
| t    | t    | d    |      | k    | k    | g    |
| tʰ   | th   | t    |      | kʰ   | kh   | k    |
| n    | n    | n    |      | ŋ    | ng   | ng   |
| l    | l    | l    |      | h    | h    | h    |
| ts   | ts   | z    |      |      |      |      |

女书输入法的声母表记方法类似汉语拼音（普通话）。

### 韵母<br/>Finals

| I    | U/N  |      | I    | U/N  |      | I    | U/N  |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| a    | a    |      | yu   | yu   |      | yoɯ  | yow  |
| ua   | ua   |      | y    | y    |      | uɯ   | uw   |
| ya   | ya   |      | ɯ    | w    |      | yn   | yn   |
| ie   | ie   |      | ai   | ai   |      | aŋ   | ang  |
| ø    | oe   |      | uai  | uai  |      | iaŋ  | iang |
| uø   | uoe  |      | yai  | yai  |      | uaŋ  | uang |
| yø   | yoe  |      | au   | au   |      | yaŋ  | yang |
| uə   | ue   |      | iau  | iau  |      | əŋ   | eng  |
| yə   | ye   |      | ou   | ou   |      | oŋ   | ong  |
| ɯə   | we   |      | iou  | iou  |      | ioŋ  | iong |
| i    | i    |      | əɯ   | ew   |      | iŋ   | ing  |
| iu   | iu   |      | uoɯ  | uow  |      | ŋ    | ng   |
| u    | u    |      |      |      |      |      |      |

注意：

- y 代表汉语拼音（普通话）中 ü 的发音
- w 代表不圆唇的 u
- ue, ye, we 中的 e 读如普通话「饿」，不是汉语拼音（普通话）「夜」中的 e

### 声调<br/>Tones

声调 7 个，其中平上去分阴阳，入声不分。

| 声调 | 调值 |
| ---- | ---- |
| 阴平 | 44   |
| 阳平 | 42   |
| 阴上 | 35   |
| 阳上 | 13   |
| 阴去 | 21   |
| 阳去 | 33   |
| 入声 | 5    |

调值使用「五度标调法」表示，即将音高分为 5 度，最高为 5，最低为 1。例如 35 表示升调，且音高由中等到最高。入声读音短促，故以单个数字表示。
