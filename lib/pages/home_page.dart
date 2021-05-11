import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'Gamespedia!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'SilkScreen',
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}