import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextKitPage extends StatefulWidget {
  @override
  _AnimatedTextKitPageState createState() => _AnimatedTextKitPageState();
}

class _AnimatedTextKitPageState extends State<AnimatedTextKitPage> {
  List<Color> _colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  TextStyle _colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // 使用场景
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: MyStyle.scenesBgColor,
            borderRadius: MyStyle.borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '温馨提示',
                style: TextStyle(
                  color: MyStyle.titleColor,
                  fontWeight: MyStyle.titleFontWeight,
                ),
              ),
              Text(
                '一个flutter包，其中包含一些很酷和很棒的文本动画的集合。 Codemagic的电子书“我们喜欢的Flutter库”中的文本动画推荐包。试试我们的现场示例应用程序。',
                style: TextStyle(
                  fontSize: MyStyle.scenesContentFontSize,
                  color: MyStyle.scenesContentColor,
                ),
              )
            ],
          ),
        ),
        // 展示区域
        Container(
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: MyStyle.displayAreaShadowColor, //投影颜色
                blurRadius: MyStyle.displayAreaBlurRadius, //投影距离，有模糊效果
                spreadRadius: MyStyle.displayAreaSpreadRadius, // 扩展距离，无模糊效果
              )
            ],
            borderRadius: MyStyle.borderRadius,
          ),
          child: Center(
            child: Column(
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Hello world!',
                      textStyle: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 500),
                    ),
                  ],
                  totalRepeatCount: 4,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('Hello World'),
                    WavyAnimatedText('Look at the waves'),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
                SizedBox(
                  height: 100.0,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText('It is not enough to do your best,'),
                        TyperAnimatedText('you must know what to do,'),
                        TyperAnimatedText('and then do your best'),
                        TyperAnimatedText('- W.Edwards Deming'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 50.0,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        ScaleAnimatedText('Think'),
                        ScaleAnimatedText('Build'),
                        ScaleAnimatedText('Ship'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Larry Page',
                        textStyle: _colorizeTextStyle,
                        colors: _colorizeColors,
                      ),
                      ColorizeAnimatedText(
                        'Bill Gates',
                        textStyle: _colorizeTextStyle,
                        colors: _colorizeColors,
                      ),
                      ColorizeAnimatedText(
                        'Steve Jobs',
                        textStyle: _colorizeTextStyle,
                        colors: _colorizeColors,
                      ),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: TextLiquidFill(
                    text: 'LIQUIDY',
                    waveColor: Colors.blueAccent,
                    boxBackgroundColor: Colors.redAccent,
                    textStyle: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                    boxHeight: 100.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
