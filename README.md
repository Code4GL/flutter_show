# Flutter Show

Flutter Show是根据[https://flutter.cn/docs/get-started/install](https://flutter.cn/docs/get-started/install)网站中的教程以及Widget目录，将网站中列出的Widget在App上实现。同时在[https://pub.flutter-io.cn/](https://pub.flutter-io.cn/)寻找了一些常用的Package，一同实现，用于展示。方便开发者在使用Flutter开发的过程中，能够直观地看到各个Widget及Package实现后的样子。

## 演示

![widget](https://github.com/Code4GL/flutter_show/blob/develop/readme/widget.gif)
![material](https://github.com/Code4GL/flutter_show/blob/develop/readme/material.gif)
![cupertino](https://github.com/Code4GL/flutter_show/blob/develop/readme/cupertino.gif)
![package](https://github.com/Code4GL/flutter_show/blob/develop/readme/package.gif)
![home](https://github.com/Code4GL/flutter_show/blob/develop/readme/home.gif)
![android](https://github.com/Code4GL/flutter_show/blob/develop/readme/android.gif)
![web](https://github.com/Code4GL/flutter_show/blob/develop/readme/web.gif)

## 环境

```terminal
flutter_show % flutter doctor

[✓] Flutter (Channel stable, 2.2.3, on macOS 11.6 20G165 darwin-arm, locale zh-Hans-CN)
[✓] Android toolchain - develop for Android devices (Android SDK version 31.0.0)
[✓] Xcode - develop for iOS and macOS
[✓] Chrome - develop for the web
[✓] Android Studio (version 2020.3)
[✓] VS Code (version 1.61.2)
[✓] Connected device (1 available)

• No issues found!
```

## 使用

```terminal
flutter pub get
cd ios
pod install  // M1芯片下使用arch -x86_64 pod install
flutter run  // 提前选择好将要运行的平台
```

## 特殊处理

### 1.CocoaPods在M1芯片下特殊处理

```terminal
arch -x86_64 pod install
```

### 2.在M1芯片下使用Android模拟器

由于模拟器都需要虚拟机支持，所以在M1芯片的Mac上，很多之前能用的模拟器都不能用了。目前最新版Android Studio的Android模拟器已经支持M1芯片。本项目演示是使用的Android Studio版本为`Android Studio Arctic Fox | 2020.3.1 Patch 3`。(如果无法启动模拟器，请检查Android SDK中ARM 64 v8a System Image是否安装成功。)
