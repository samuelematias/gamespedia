import 'package:flutter/material.dart';
import '../../colors/colors.dart';
import '../../texts/texts.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    @required this.imageUrl,
    Key key,
    this.child,
    this.width = 318.0,
    this.height = 84.0,
    this.overlayText = '',
  })  : assert(imageUrl != null,
            'A non-null String must be provided to the imageUrl parameter.'),
        assert(imageUrl != '',
            'A non-Empty String must be provided to the imageUrl parameter.'),
        super(key: key);

  final Widget child;
  final double width;
  final double height;
  final String imageUrl;
  final String overlayText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            border: Border.all(width: 4),
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                primaryColor.withOpacity(0.25),
                BlendMode.darken,
              ),
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        Visibility(
          visible: overlayText.isNotEmpty,
          child: SizedBox(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    overlayText,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ).p2(color: secondaryColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
