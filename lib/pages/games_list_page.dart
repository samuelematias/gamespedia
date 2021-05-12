import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../controllers/games_controller.dart';
import '../models/models.dart';

class GamesListPage extends StatefulWidget {
  const GamesListPage({Key key}) : super(key: key);

  @override
  _GamesListPageState createState() => _GamesListPageState();
}

class _GamesListPageState extends State<GamesListPage> {
  final GameController controller = GameController();

  @override
  void initState() {
    super.initState();
    controller.readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        elevation: 0,
      ),
      body: AnimatedBuilder(
        animation: controller.state,
        builder: (_, __) => _Body(controller: controller),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({@required this.controller, Key key}) : super(key: key);
  final GameController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spaceM),
      child: Column(
        children: <Widget>[
          const Text('Games List').h1(),
          const SizedBox(height: spaceL),
          _HandleBody(controller: controller),
        ],
      ),
    );
  }
}

class _HandleBody extends StatelessWidget {
  const _HandleBody({@required this.controller, Key key}) : super(key: key);
  final GameController controller;

  @override
  Widget build(BuildContext context) {
    final bool isLoading = controller.state.value == GameState.loading;
    final bool isError = controller.state.value == GameState.error;
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (isError) {
      return Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: PrimaryButton(
            label: 'Try again',
            onPressed: () => controller.readJson(),
          ),
        ),
      );
    }
    return Expanded(
      child: _List(
        controller: controller,
      ),
    );
  }
}

class _List extends StatelessWidget {
  const _List({@required this.controller, Key key}) : super(key: key);
  final GameController controller;

  @override
  Widget build(BuildContext context) {
    final List<Games> listGames = controller.games;

    return ListView.builder(
      itemCount: listGames.length,
      itemBuilder: (BuildContext context, int index) {
        final Games game = listGames[index];
        return CardImage(
          imageUrl: game.thumbnail,
          overlayText: game.name,
          onTap: () {},
        );
      },
    );
  }
}
