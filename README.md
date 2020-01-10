# my_first_flutter —— Flutter first try

## 一、搭建 Flutter 开发环境

> 官网教程(macOs 版)：https://flutterchina.club/setup-macos/

### 划重点

1. 获取 Flutter SDK
2. 下载 Android SDK(连 Android Studio 一起下，简单粗暴)(主要是模拟器)
3. 下载 XCode(主要是模拟器)
4. 设置全局变量 PATH
   1. **打开或创建 \$HOME/.bash_profile**
   2. 添加以下代码并更改`[PATH_TO_FLUTTER_GIT_DIRECTORY]`为自己的 SDK 路径
   ```
    export PUB_HOSTED_URL=https://pub.flutter-io.cn
    export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
    export PATH=PATH_TO_FLUTTER_GIT_DIRECTORY/flutter/bin:$PATH
   ```
   3. 运行`source $HOME/.bash_profile`刷新当前窗口
   4. 如若重启后失效，参考[更新环境变量](https://flutterchina.club/setup-macos/)

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

1. 安装基础插件(必备)： **Dart**， **Flutter**。如果没有安装 SDK，装完插件 VSCode 会提示未安装 SDK 是否下载，点确定，VSCode 插件给出的链接下载 SDK 很稳定
2. 辅助插件(推荐)
   - Bracket Pair Colorizer 2: 彩色括号，让括号更好的组 cp
   - Awesome Flutter Snippets
   - Flutter Widget Snippets
   - Better Comments: 区分不同的注释，有需要可以试试
   - Code Runner: 可有可无。可以快捷 run 单个文件
3. 设置
   - `"dart.previewFlutterUiGuides": true` :Flutter 的嵌套太多，辅助线，帮助查看 widget 嵌套
   - `"dart.flutterSdkPath": "PATH=PATH_TO_FLUTTER_GIT_DIRECTORY/flutter"`: 给插件设置本机的 flutterSdk 地址
   - `"dart.sdkPath": "PATH=PATH_TO_FLUTTER_GIT_DIRECTORY/dart-sdk"`: 设置本机的 dart-sdk，单独执行 dart 文件执行此项(类似 node xx.js)

## 二、Dart

1. [下载 Dart sdk](https://dart.dev/get-dart)
2. 设置 PATH 全局变量，参考 Flutter SDK PATH 设置全局变量

## 三、运行

## 四、项目结构

根目录下

| 文件夹名     | 描述                                 |
| ------------ | ------------------------------------ |
| assets       | 静态文件                             |
| lib          | 源代码                               |
| shell        | shell 文件                           |
| test         | 单元测试文件                         |
| json         | \*可能是个临时文件夹用于生成接口模型 |
| pubspec.yamy | 依赖包                               |

lib 文件夹下

| 文件夹名  | 描述                     |
| --------- | ------------------------ |
| widgets   | 通用组件库               |
| utils     | 工具方/包                |
| constants | 全局枚举类               |
| models    | 全局 models              |
| pages     | 页面，每个页面一个文件夹 |
| routes    | 页面注册到 routes 中     |
| main.dart | app 入口                 |
| types     | \*全局类型可能无用       |

路由手动添加
