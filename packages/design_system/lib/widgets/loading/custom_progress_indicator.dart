import 'package:flutter/material.dart';

import '../../colors/colors.dart';

class CustomProgressIndicator extends SizedBox {
  CustomProgressIndicator({
    Key key,
    double width = 30.0,
    double height = 30.0,
    double strokeWidth = 2.0,
    Color backgroundColor = Colors.transparent,
    Color valueColor = secondaryColor,
  }) : super(
          key: key,
          child: CircularProgressIndicator(
            backgroundColor: backgroundColor,
            valueColor: AlwaysStoppedAnimation<Color>(valueColor),
            strokeWidth: strokeWidth,
          ),
          width: width,
          height: height,
        );
}
