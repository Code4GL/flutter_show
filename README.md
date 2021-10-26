# Flutter Show

Flutter Show是根据[https://flutter.cn/docs/get-started/install](https://flutter.cn/docs/get-started/install)网站中的教程以及Widget目录，将网站中列出的Widget在App上实现。同时在[https://pub.flutter-io.cn/](https://pub.flutter-io.cn/)寻找了一些常用的Package，一同实现，用于展示。方便开发者在使用Flutter开发的过程中，能够直观地看到各个Widget及Package实现后的样子。

## 演示

![home](https://github.com/Code4GL/flutter_show/blob/develop/readme/home.gif)
![widget](https://github.com/Code4GL/flutter_show/blob/develop/readme/widget.gif)
![material](https://github.com/Code4GL/flutter_show/blob/develop/readme/material.gif)
![cupertino](https://github.com/Code4GL/flutter_show/blob/develop/readme/cupertino.gif)
![package](https://github.com/Code4GL/flutter_show/blob/develop/readme/package.gif)

## 使用

```terminal
flutter pub get
cd ios
pod install  // M1芯片下使用arch -x86_64 pod install
flutter run  // 提前选择好将要运行的平台
```

## 特殊处理记录

### CocoaPods在M1芯片下特殊处理

```terminal
arch -x86_64 pod install
```
