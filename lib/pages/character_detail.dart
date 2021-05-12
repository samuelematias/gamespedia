import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class CharacterDetail extends StatelessWidget {
  const CharacterDetail({@required this.character, Key key}) : super(key: key);
  final CharactersList character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        elevation: 0,
      ),
      body: Center(child: _Body(character: character)),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({@required this.character, Key key}) : super(key: key);
  final CharactersList character;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spaceM),
      child: Column(
        children: <Widget>[
          const Text('Character Detail').h1(),
          const SizedBox(height: spaceL),
          Text(character.name).h1(),
          const SizedBox(height: spaceL),
          Text(character.description).p1(),
          const SizedBox(height: spaceL),
          Text(character.about).p1(),
        ],
      ),
    );
  }
}
