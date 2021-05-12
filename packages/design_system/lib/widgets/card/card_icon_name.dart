import 'package:flutter/material.dart';

import '../../texts/texts.dart';

class CardIconName extends StatelessWidget {
  const CardIconName({
    @required this.icon,
    @required this.name,
    Key key,
    this.child,
    this.width = 318.0,
    this.height = 55.0,
  })  : assert(icon != null,
            'A non-null String must be provided to the icon parameter.'),
        assert(icon != '',
            'A non-Empty String must be provided to the icon parameter.'),
        assert(name != null,
            'A non-null String must be provided to the name parameter.'),
        assert(name != '',
            'A non-Empty String must be provided to the name parameter.'),
        super(key: key);

  final Widget child;
  final double width;
  final double height;
  final String icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      // height: height,
      decoration: BoxDecoration(
        border: Border.all(width: 4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(icon),
          Flexible(child: Text(name.toUpperCase()).h3()),
        ],
      ),
    );
  }
}
