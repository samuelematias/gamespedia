import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';

import '../app/utils/utils.dart';
import '../constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
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
                Center(
                  child: const Text(
                    'Gamespedia!',
                    textAlign: TextAlign.center,
                  ).h1(color: secondaryColor),
                ),
              ],
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.5,
            child: PrimaryButton(
              label: 'GO TO GAMES!',
              onPressed: () {},
            ),
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
