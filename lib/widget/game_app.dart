import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/models/models.dart';
import 'package:stack/stack.dart';
import 'package:stack/widget/card_description.dart';
import 'package:stack/widget/overlay_screen.dart';
import 'package:stack/widget/score_card.dart';

import '../const.dart';
import '../data/data.dart';
import 'tab.dart';
import 'time_day.dart';

class GameApp extends StatefulWidget {
  const GameApp({super.key});

  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  late final StackGame game;

  @override
  void initState() {
    super.initState();
    game = StackGame();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.pressStart2pTextTheme().apply(
          bodyColor: kColorBluePrincipal,
          displayColor: kColorBluePrincipal,
        ),
      ),
      home: Scaffold(
        body: DecoratedBox(
          decoration: const BoxDecoration(
            color: kColorBackground,
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          flex: 3,
                          child: TabIndicator(),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Expanded(
                          flex: 2,
                          child: ValueListenableBuilder<GameCardModel?>(
                            valueListenable: game.cardSelected,
                            builder: (context, value, child) => CardDescription(
                              gameCard: game.cardSelected.value ??
                                  GameCardModel.human(card: kHuman),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    flex: 4,
                    child: Stack(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kColorBluePrincipal,
                              width: 4,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: GameWidget(
                                game: game,
                                overlayBuilderMap: {
                                  PlayState.welcome.name: (context, game) =>
                                      const OverlayScreen(
                                        title: 'TAP TO PLAY',
                                        subtitle: 'Use arrow keys or swipe',
                                      ),
                                  PlayState.gameOver.name: (context, game) =>
                                      const OverlayScreen(
                                        title: 'G A M E   O V E R',
                                        subtitle: 'Tap to Play Again',
                                      ),
                                  PlayState.won.name: (context, game) =>
                                      const OverlayScreen(
                                        title: 'Y O U   W O N ! ! !',
                                        subtitle: 'Tap to Play Again',
                                      ),
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TimeDay(
                              currentTime: game.timeDayNotifier,
                              onTapFast: game.changeFast,
                              onTapPause: game.changePause,
                              onTapSound: game.changeSound,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: ScoreCard(
                              score: game.score,
                              coin: game.coin,
                              health: game.health,
                              food: game.food,
                              oxygen: game.oxygen,
                              carbonFootprint: game.carbonFootprint,
                              energy: game.energy,
                              handicap: game.handicap,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
