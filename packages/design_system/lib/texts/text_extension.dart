import 'package:flutter/widgets.dart';

import '../colors/colors.dart';
import 'text_constants.dart';

extension TextExtension on Text {
  Text h1({TextStyle style, Color color = primaryColor}) {
    final TextStyle defaultStyle = TextStyle(
      fontSize: 30,
      color: color,
      fontFamily: silkScreen,
    );
    return Text(data,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text h2({TextStyle style, Color color = primaryColor}) {
    final TextStyle defaultStyle = TextStyle(
      fontSize: 20,
      color: color,
      fontFamily: silkScreen,
    );
    return Text(data,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text h3({TextStyle style, Color color = primaryColor}) {
    final TextStyle defaultStyle = TextStyle(
      fontSize: 30,
      color: color,
      fontFamily: disposableDroid,
    );
    return Text(data,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text h4({TextStyle style, Color color = primaryColor}) {
    final TextStyle defaultStyle = TextStyle(
      fontSize: 20,
      color: color,
      fontFamily: disposableDroid,
    );
    return Text(data,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text p1({TextStyle style, Color color = primaryColor}) {
    final TextStyle defaultStyle = TextStyle(
      fontSize: 20,
      color: color,
      fontFamily: silkScreen,
    );
    return Text(data,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text p2({TextStyle style, Color color = primaryColor}) {
    final TextStyle defaultStyle = TextStyle(
      fontSize: 25,
      color: color,
      fontFamily: silkScreen,
    );
    return Text(data,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text p3({TextStyle style, Color color = primaryColor}) {
    final TextStyle defaultStyle = TextStyle(
      fontSize: 20,
      color: color,
      fontFamily: disposableDroid,
    );
    return Text(data,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text p4({TextStyle style, Color color = primaryColor}) {
    final TextStyle defaultStyle = TextStyle(
      fontSize: 25,
      color: color,
      fontFamily: disposableDroid,
    );
    return Text(data,
        key: key,
        locale: locale,
        maxLines: maxLines,
        overflow: overflow,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }
}
