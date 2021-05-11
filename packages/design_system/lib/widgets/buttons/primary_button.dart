import 'package:flutter/material.dart';

import '../../colors/colors.dart';
import '../../texts/texts.dart';
import '../loading/loading.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    @required this.label,
    @required this.onPressed,
    Key key,
    this.loading = false,
    this.disabled = false,
    this.isKeyboardVisible = false,
  }) : super(key: key);

  final String label;
  final bool loading;
  final VoidCallback onPressed;
  final bool disabled;
  final bool isKeyboardVisible;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primaryColor, // background
        onPrimary: secondaryColor, // foreground
        onSurface: disabledColor, //disabled
      ),
      onPressed: !disabled && !loading ? onPressed : null,
      child: Container(
        height: 50.0,
        alignment: Alignment.center,
        child: loading
            ? CustomProgressIndicator()
            : Text(
                label,
                textAlign: TextAlign.center,
              ).p3(color: secondaryColor),
      ),
    );
  }
}
