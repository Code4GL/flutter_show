import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_show/provider/language_provider.dart';
import 'pages/home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
      ],
      child: App(),
    ),
  );
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
