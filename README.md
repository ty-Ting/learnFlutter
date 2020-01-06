# my_first_flutter —— Flutter first try

## 搭建 Flutter 开发环境

> 官网教程(macOs 版)：https://flutterchina.club/setup-macos/

### 划重点

1. 获取 Flutter SDK
2. 下载 Android SDK(连 Android Studio 一起下，简单粗暴)(主要是模拟器)
3. 下载 XCode(主要是模拟器)

官网上有说，安装完 SDK，执行 flutter doctor 检查 flutter chain 的安装情况，是否都妥当了。

##### flutter doctor 检查什么？

     - Flutter SDK版本等
     - Android toolchain - develop for Android devices
     - Xcode - develop for iOS and macOS
     - Android Studio，以及Android Studio里的Flutter plugin 是否安装
     - IntelliJ IDEA Ultimate Edition， 以及编辑器的Flutter plugin 是否安装
     - VS Code，以及编辑器的Flutter plugin 是否安装
     - Connected device 是否连接设备(用模拟器可以忽略这条)

> 备注：以上不是每一条都要通过。比如用 vscode，那么 IDEA 里有插件没有装好并不影响使用；如果用模拟器测试，没有连接设备也没有影响。

##### 想简化安装的话，最简准备项：

    - Flutter SDK
    - VSCode或IDEA，并安装插件Dart和Flutter
    - Xcode

> 备注：IntelliJ IDEA Ultimate Edition (version 2018.3.2) 这个版本的插件库里没有 Flutter，网上下也没法本地安装。考虑跟 IDEA 版本有关系

### 工具配置(推荐 VSCode)

具体说明一下 VSCode, 其他编辑器自己研究。

#### VSCode

1. 安装基础插件： **Dart**， **Flutter**。
