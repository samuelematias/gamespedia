import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import '../../colors/colors.dart';
import '../../texts/texts.dart';

class ThumbnailCard extends StatelessWidget {
  const ThumbnailCard({
    @required this.imageUrl,
    @required this.index,
    Key key,
    this.child,
    this.width = 300,
    this.height = 300,
    this.onTap,
  })  : assert(imageUrl != null,
            'A non-null String must be provided to the icon parameter.'),
        assert(imageUrl != '',
            'A non-Empty String must be provided to the icon parameter.'),
        assert(index != null,
            'A non-null String must be provided to the icon parameter.'),
        super(key: key);

  final Widget child;
  final double width;
  final double height;
  final String imageUrl;
  final int index;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final String indexToString = (index + 1).toString();
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          border: Border.all(width: 4),
        ),
        child: Stack(
          children: <Widget>[
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: imageUrl,
              imageErrorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.image_not_supported);
              },
              fit: BoxFit.cover,
              height: height,
              width: width,
            ),
            Text(indexToString).h3(color: secondaryColor),
          ],
        ),
      ),
    );
  }
}
