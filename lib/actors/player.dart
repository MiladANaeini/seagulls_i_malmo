import 'dart:async';

import 'package:flame/components.dart';
import 'package:seagulls_i_malmo/seagulls_i_malmo.dart';

enum PlayerState { idle, running }

class Player extends SpriteAnimationComponent with HasGameRef<SeagullsIMalmo> {
  late final SpriteAnimation idleAnimation;
  final double stepTime = 0.05;
  late Map<PlayerState, SpriteAnimation> animations;

  set current(PlayerState current) {}

  @override
  FutureOr<void> onLoad() {
    _loadAllAnimations();
    return super.onLoad();
  }

  void _loadAllAnimations() {
    idleAnimation = SpriteAnimation.fromFrameData(
      game.images.fromCache('BlueBird/Flying (32x32).png'),
      SpriteAnimationData.sequenced(
        amount: 11,
        stepTime: stepTime,
        textureSize: Vector2.all(32),
      ),
    );
    //list of all animations
    animations = {PlayerState.idle: idleAnimation};
    //set current animations
    current = PlayerState.idle;
  }
}
