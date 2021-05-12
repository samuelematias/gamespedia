import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/widgets.dart';

import '../constants/constants.dart';

import '../models/models.dart';

class GameController {
  List<Games> games;
  final ValueNotifier<GameState> state =
      ValueNotifier<GameState>(GameState.loading);

  Future<void> readJson() async {
    try {
      state.value = GameState.loading;
      final String response = await rootBundle.loadString(lineage2Json);
      final data = GamesModel.fromJson(
          await json.decode(response) as Map<String, dynamic>);
      games = data.games;
      state.value = GameState.success;
    } catch (e) {
      state.value = GameState.error;
    }
  }
}

enum GameState { loading, success, error }
