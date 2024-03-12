part of 'extensions.dart';

extension EnergyExtension on CardComponent {
  Future<void> sellEnergy() async {
    if (game.playState != PlayState.gameOver &&
        game.playState != PlayState.gameOver &&
        game.energy.value > game.energyMax.value) {
      game.isPause = true;
      game.canInteract.value = false;
      List<CardComponent> cards = game.world.children.query<CardComponent>();
      game.playState = PlayState.energy;
      for (CardComponent c in cards) {
        if ((c.card.energy ?? 0) < 0) {
          c.changeAnimation(AnimationType.shake);
          c.activeAnimation = true;
        }
      }
      await Future.doWhile(() async {
        await Future.delayed(
          const Duration(
            seconds: 1,
          ),
        );
        return game.energy.value > game.energyMax.value;
      });

      cards = game.world.children.query<CardComponent>();
      for (CardComponent c in cards) {
        if ((c.card.energy ?? 0) < 0) {
          c.changeAnimation(AnimationType.none);
          c.activeAnimation = false;
          c.angle = 0;
        }
      }
      game.isPause = false;
      game.canInteract.value = true;
      game.playState = PlayState.playing;
    }
  }
}
