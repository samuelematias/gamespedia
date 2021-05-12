import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';

import '../pages/pages.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gamespedia',
      home: const HomePage(),
      theme: ThemeData(
        primaryIconTheme: const IconThemeData(
          color: primaryColor,
        ),
        accentIconTheme: const IconThemeData(
          color: primaryColor,
        ),
        iconTheme: const IconThemeData(
          color: primaryColor,
        ),
      ),
    );
  }
}
