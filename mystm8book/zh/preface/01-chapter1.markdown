# 前言 #

说起这本手册的起因，是我去年6月做项目时上时碰到STM8这块芯片。这块芯片性能很强大，但是缺少对应的教材。当时我全靠着ST的英文文档，看得比较累。空下来就想，如果能有本教材就好了。毕设选题时，因为自己也做过一些研发类的项目，想换种形式，想到了这件事，就决定干脆自己写本教材。
但最后决定写成手册的形式，是因为一篇大牛的博客。这位大牛自身的技术积淀已经很强了，网上最流行的中文makefile教程就是他写的。他写的博文我经常看，感觉很有深度。据说很多出版社找他请他出书，但是他拒绝了，他说了这么一句话：“45岁之前绝不出书”，因为他觉得只有到了那个时候，自己才可能得到足够的积淀，才可能出的了精品。看到这句话，我想以我的能力又怎敢称之为教材呢？还是叫它手册吧。
在惠普以及爱立信的实习过程中，我接触了很多软件方面好用的工具，成熟的软件工程思想。比如说git，就是非常好的版本控制管理软件，比如说agile，消除了传统软件开发过程中的部分问题。我觉得，软件开发中的诸多问题，随着编程规模的扩大，参与人数的增多，在硬件开发中也会逐步地体现出来。所以，这些工具及思想方式引入到嵌入式编程，将是一种趋势。本手册亦不指望能够引领什么潮流，只希望能对STM8的学习者，有一个有益的指导，仅此而已。


### 适合的对象 ###
本手册适合具有C语言功底，并能在51或AVR上进行简单程序设计的单片机爱好者。如果没有C语言基础的，推荐[《C程序设计语言》](http://product.china-pub.com/14975&ref=browse)，没有单片机基础的，本手册建议从马潮教授编写的[《AVR单片机嵌入式系统原理与应用实践(第2版)》](http://www.amazon.cn/AVR%E5%8D%95%E7%89%87%E6%9C%BA%E5%B5%8C%E5%85%A5%E5%BC%8F%E7%B3%BB%E7%BB%9F%E5%8E%9F%E7%90%86%E4%B8%8E%E5%BA%94%E7%94%A8%E5%AE%9E%E8%B7%B5-%E9%A9%AC%E6%BD%AE/dp/B005GZQWB0/ref=sr_1_1?ie=UTF8&qid=1335097650&sr=8-1)

## 本书结构 ##

  * 第一章：前言
  * 第二章：重读C语言
  * 第三章：软件开发那点事
  * 第四章：STM8芯片资源简介
  * 第五章：STM8官方软件库简介
  * 第六章：STM8S编程实战

### 封面及封底 ###
因为喜欢排版，就自己设计了一个。封面封底的图片都是取景自华师大校园的风景，本手册封面、封底都是使用COREDRAW设计的。

### 项目地址 ###
本次STM8学习项目托管在github上，并且项目完全开源。欢迎大家访问：[www.github.com/vincent5295/stm8teach](www.github.com/vincent5295/stm8teach)

## 如何写作本手册的 ##
本手册是使用MARKDOWN格式写作的，感谢larrycai的[mkbok项目](www.github.com/larrycai/mkbok)。

### 如何阅读本手册 ###
一般来说，建议直接阅读电子版，一来可以获得较好的阅读体验，二来可以节约纸张。从保护视力的角度出发，自行打印纸质版也是可以的。但请一定不要忽视电子版，文中随处的可见的链接，是一笔宝贵的财富。本手册编写的一大准则，就是以自身为骨架，通过这些链接，能让读者得到丰富的内容。

### 你不能从本手册中获得 ###
本手册不是官方数据手册的汉化并堆砌，故详细的硬件寄存器资源及软件库函数说明并不能从中得到。手册本身不需实现盈利，故针对某开发板的内容在手册上也不能获得。同样关于程序语言的章节也不会提供过多C语言的细节。但以上这些在相关章节都会提到相应资源的方法，并且提供经验上的参考。

### 项目网站上的开发板 ###
项目网站上的核心板、资源板基于开放式设计。只是一个参考，如果不愿意自己画板子，可以直接将网站上的板子发到制版厂做，或者在网上买一款开发板都是可行的。资源板只提供原理图（因为模块太多，都做板子不实惠），因为这些模块PCB设计比较简单，需要做PCB的，自行copy所需模块，导入至PCB文件，连少许线即可。

## 致谢 ##
在本手册的编写过程中，遇到很多困难。在此感谢惠普以及爱立信的同事在软件编程方面对我的指点。特别要感谢爱立信中国通讯有限公司为期一周的敏捷开发培训，学到了不少有趣的东西。感谢larrycai在Github上的[kaiyuanbook](www.github.com/larrycai/kaiyuanbook)以及[mkbok](www.github.com/larrycai/mkbok)项目，为本手册的快速写作奠定了基础。最后要感谢周围的老师同学们在本项目的实践过程中，对本人给予的无私帮助，没有你们的鼓励与支持，就没有这本手册。
