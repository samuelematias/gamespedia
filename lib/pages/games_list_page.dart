import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';
import '../constants/constants.dart';

class GamesListPage extends StatelessWidget {
  const GamesListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: spaceM),
        child: Column(
          children: <Widget>[
            const Text('Games List').h1(),
            const SizedBox(height: spaceL),
            const Center(child: _List()),
            const SizedBox(height: spaceL),
            const CardIconName(
              icon: iconOpenBook,
              name: 'about us',
            ),
          ],
        ),
      ),
    );
  }
}

class _List extends StatelessWidget {
  const _List({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CardImage(
      imageUrl:
          'https://cdn-www.bluestacks.com/bs-images/lineage-revolution-ii_banner.jpg',
      overlayText: 'Lineage 2',
    );
  }
}
