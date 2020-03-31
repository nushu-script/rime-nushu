# 开发指南

欢迎更多的人参与到 Unicode 女书输入法的开发中，为本项目的完善贡献力量。

## Unicode

[Unicode](http://www.unicode.org/) 是计算机科学领域里的一项业界标准，包括字符集、编码方案等。Unicode 是为了解决传统的字符编码方案的局限而产生的，它为每种语言中的每个字符设定了统一并且唯一的二进制编码，以满足跨语言、跨平台进行文本转换、处理的要求。

Unicode 10.0 于 2017 年 6 月 20 日发布，其中加入了 396 个女书字符，编码区域为 U+1B170-U+1B2FF。使得女书可以进行通用的计算机处理。

[http://www.unicode.org/charts/PDF/U1B170.pdf](http://www.unicode.org/charts/PDF/U1B170.pdf)

![Unicode 中的女书](demo/unicode_charts_nushu_screenshoot.png)

## 中州韵输入法引擎（RIME）

[RIME &#124; 中州韻輸入法引擎](http://rime.im/)（RIME）是一个优秀的开源输入法框架，它最卓越的特点是高度可配置，支持用户定制输入方案、码表、用户词典、按键行为、界面外观，因此受到了语言文字爱好者的欢迎。爱好者们基于 RIME 实现了包括双拼、方言在内的各种输入法。

RIME 可以在各种操作系统上使用，在 Windows 上称为「[小狼毫](https://github.com/rime/weasel)（Weasel）」，在 Linux 上有 [ibus-rime](https://github.com/rime/ibus-rime) 和 [fcitx-rime](https://github.com/fcitx/fcitx-rime)，在 macOS 上称为「[鼠须管](https://github.com/rime/squirrel)（Squirrel）」，在 Android 上称为「[同文输入法](https://github.com/osfans/trime)（trime）」，在 iOS 上称为 iRime。

RIME 在各平台的安装方法可以参考 [输入法安装方法](https://kahaani.github.io/gatian/appendix2/index.html)。

若在使用 RIME 的过程中有任何疑问，可在 QQ 群 77608640 中询问。

## 开放中文转换（OpenCC）

[OpenCC](https://github.com/BYVoid/OpenCC) 是中文简繁转换开源项目，支持词汇级别的转换、异体字转换和地区习惯用词转换（中国大陆、台湾、香港）。

在本项目中，通过对 RIME 输入法中内置的 OpenCC 增加简体汉字到女书字符的转换（对应的文件为 `s2nushu.json` 与 `s2nushu.txt`），实现了输入普通话拼音，输出女书字符的效果。

# Build

```sh
$ sudo pacman -S haskell-split
$ cd build
$ wget https://nushuscript.org/unicode_nushu/data.csv
$ ./MakeOpenCC.hs < data.csv > ../opencc/s2nushu.txt
```
