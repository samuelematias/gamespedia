import 'package:flutter/material.dart';
import '../app/utils/utils.dart';
import '../constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 408,
        child: Stack(
          children: <Widget>[
            SizedBox(
              width: ScreenSize().col_12(context: context),
              child: Image.asset(
                gamespediaImg,
                fit: BoxFit.cover,
                // fit: BoxFit.contain,
              ),
            ),
            const Center(
              child: Text(
                'Gamespedia!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SilkScreen',
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
