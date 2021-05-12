import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';
import 'character_detail.dart';

class CharacterList extends StatelessWidget {
  const CharacterList({@required this.characters, Key key}) : super(key: key);
  final List<CharactersList> characters;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        elevation: 0,
      ),
      body: _Body(characters: characters),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({@required this.characters, Key key}) : super(key: key);
  final List<CharactersList> characters;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spaceM),
      child: Column(
        children: <Widget>[
          const Text('Character List').h1(),
          const SizedBox(height: spaceL),
          Expanded(child: _List(characters: characters))
        ],
      ),
    );
  }
}

class _List extends StatelessWidget {
  const _List({@required this.characters, Key key}) : super(key: key);
  final List<CharactersList> characters;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: characters.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        final CharactersList character = characters[index];

        return ThumbnailCard(
          imageUrl: character.thumbnail,
          index: index,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<CharacterDetail>(
                builder: (context) => CharacterDetail(
                  character: character,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
