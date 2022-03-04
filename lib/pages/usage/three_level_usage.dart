import 'package:flutter/material.dart';

import 'package:flutter_show/components/language_change.dart';
import 'package:provider/provider.dart';

import '../../provider/language_provider.dart';
import 'basics/action_sheet.dart';
import 'basics/button.dart';
import 'animation/hero.dart';
import 'basics/dialog.dart';
import 'basics/options_action.dart';
import 'basics/picker.dart';
import 'basics/progress_indicator.dart';

class ThreeLevelUsagePage extends StatelessWidget {
  ThreeLevelUsagePage({
    Key? key,
    required this.title,
    required this.introductionEN,
    required this.introductionCN,
    required this.routeName,
  }) : super(key: key);

  final String title;
  final String introductionEN;
  final String introductionCN;
  final String routeName;

  // routeName路由映射
  final _routes = {
    // Basics
    'Usage/Basics/Button': ButtonPage(),
    'Usage/Basics/ProgressIndicator': ProgressIndicatorPage(),
    'Usage/Basics/Dialog': DialogPage(),
    'Usage/Basics/Picker': PickerPage(),
    'Usage/Basics/ActionSheet': ActionSheetPage(),
    'Usage/Basics/OptionsAction': OptionsActionPage(),
    // Animation
    'Usage/Animation/Hero': HeroPage()
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: <Widget>[
          LanguageChange(),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: title,
              transitionOnUserGestures: true,
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                alignment: AlignmentDirectional.centerStart,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 3,
                      spreadRadius: 1,
                      color:
                          Theme.of(context).colorScheme.shadow.withOpacity(0.2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Container(
                      child: Consumer<LanguageProvider>(
                        builder:
                            (context, LanguageProvider languageProvider, _) =>
                                Text(
                          languageProvider.lang == "zh"
                              ? introductionCN
                              : introductionEN,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 50),
              child: _routes[routeName],
            ),
          ],
        ),
      ),
    );
  }
}
