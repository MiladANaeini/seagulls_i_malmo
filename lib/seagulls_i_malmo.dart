import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:seagulls_i_malmo/levels/level.dart';

class SeagullsIMalmo extends FlameGame {
  @override
  Color backgroundColor() => const Color(0xff211f30);
  late final CameraComponent cam;

  final world = Level();

  @override
  FutureOr<void> onLoad() async {
    //Load all images into cache
    await images.loadAllImages();
    cam = CameraComponent.withFixedResolution(
        world: world, width: 640, height: 360);
    cam.viewfinder.anchor = Anchor.topLeft;

    addAll([cam, world]);

    return super.onLoad();
  }
}
