import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:seagulls_i_malmo/seagulls_i_malmo.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen(); //make the app fullscreen
  Flame.device.setLandscape(); //make the app init landscape

  SeagullsIMalmo game = SeagullsIMalmo();
  runApp(GameWidget(game: kDebugMode ? SeagullsIMalmo() : game));
}
