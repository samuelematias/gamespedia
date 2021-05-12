import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';

import '../models/models.dart';
import 'character_list.dart';

class GameDetail extends StatelessWidget {
  const GameDetail({@required this.game, Key key}) : super(key: key);
  final Games game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        elevation: 0,
      ),
      body: Center(child: _Body(game: game)),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({@required this.game, Key key}) : super(key: key);
  final Games game;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spaceM),
      child: Column(
        children: <Widget>[
          const Text('Game Detail').h1(),
          const SizedBox(height: spaceL),
          Text(game.name).h1(),
          const SizedBox(height: spaceL),
          Text(game.description).p1(),
          const SizedBox(height: spaceL),
          CardIconName(
            name: game.charactersType,
            icon: iconOpenBook,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<CharacterList>(
                  builder: (context) => CharacterList(
                    characters: game.charactersList,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
