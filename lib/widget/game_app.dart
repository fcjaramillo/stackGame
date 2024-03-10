import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/models/models.dart';
import 'package:stack/stack.dart';
import 'package:stack/widget/card_description.dart';
import 'package:stack/widget/menu.dart';
import 'package:stack/widget/overlay_screen.dart';
import 'package:stack/widget/score_card.dart';

import '../const.dart';
import '../data/data.dart';
import '../enums/enums.dart';
import '../l10n/generated/l10n.dart';
import '../providers/providers.dart';
import 'tab.dart';
import 'time_day.dart';

class GameApp extends ConsumerStatefulWidget {
  const GameApp({super.key});

  @override
  ConsumerState<GameApp> createState() => _GameAppState();
}

class _GameAppState extends ConsumerState<GameApp> {
  PlayState pState = PlayState.welcome;

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
      locale: ref.watch(localeProvider),
      localizationsDelegates: const [
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.delegate.supportedLocales,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/menu':
            return MenuScreen.goTo(
              (loc) {
                ref
                    .read(localeProvider.notifier)
                    .update((state) => loc ?? state);
              },
            );
          case '/game':
            return GameScreen.goTo();
        }
        return null;
      },
      initialRoute: '/menu',
    );
  }
}

class GameScreen extends ConsumerStatefulWidget {
  const GameScreen({
    super.key,
  });

  static MaterialPageRoute<void> goTo() => MaterialPageRoute(
        builder: (_) => const GameScreen(),
        settings: const RouteSettings(name: '/game'),
      );

  @override
  ConsumerState<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends ConsumerState<GameScreen> {
  late final StackGame game;
  PlayState pState = PlayState.welcome;

  @override
  void initState() {
    super.initState();
    L10n.load(ref.read(localeProvider)).whenComplete(() {});
    game = StackGame();
  }

  @override
  void dispose() {
    game.onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Expanded(
                        flex: 3,
                        child: ValueListenableBuilder<List<QuestModel>>(
                          valueListenable: game.questNotifier,
                          builder: (context, valueQuest, child) =>
                              ValueListenableBuilder<List<RecipeModel>>(
                            valueListenable: game.recipesNotifier,
                            builder: (context, valueRecipes, child) =>
                                ValueListenableBuilder<List<AchivementModel>>(
                              valueListenable: game.achivementNotifier,
                              builder: (context, valueAchivements, child) =>
                                  TabIndicator(
                                onTapCard: (CardModel card) {
                                  game.cardSelected.value =
                                      GameCardModel.byType(card);
                                },
                                recipesNotifier: valueRecipes,
                                achivementNotifier: valueAchivements,
                                questNotifier: valueQuest,
                              ),
                            ),
                          ),
                        ),
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
                  flex: 3,
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
                                    OverlayScreen(
                                      title: L10n.of(context).welcomeTitle,
                                      subtitle:
                                          L10n.of(context).welcomeSubtitle,
                                      action: L10n.of(context).welcomeAction,
                                    ),
                                PlayState.onboarding.name: (context, game) {
                                  return OverlayScreen(
                                    title: L10n.of(context).onboardingTitle,
                                    subtitle:
                                        L10n.of(context).onboardingSubtitle,
                                    action: L10n.of(context).onboardingAction,
                                  );
                                },
                                PlayState.gameOver.name: (context, game) =>
                                    OverlayScreen(
                                      title: L10n.of(context).gameOverTitle,
                                      subtitle:
                                          L10n.of(context).gameOverSubtitle,
                                      action: L10n.of(context).gameOverAction,
                                    ),
                                PlayState.won.name: (context, game) =>
                                    OverlayScreen(
                                      title: L10n.of(context).wonTitle,
                                      subtitle: L10n.of(context).wonSubtitle,
                                      action: L10n.of(context).wonAction,
                                    ),
                                PlayState.selling.name: (context, game) =>
                                    Center(
                                      child:
                                          Text(L10n.of(context).sellingTitle),
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
                            canInteract: game.canInteract,
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
                            cards: game.card,
                            cardsMax: game.cardMax,
                            health: game.health,
                            food: game.food,
                            oxygen: game.oxygen,
                            carbonFootprint: game.carbonFootprint,
                            energy: game.energy,
                            energyMax: game.energyMax,
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
    );
  }
}
