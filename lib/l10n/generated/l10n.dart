// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class L10n {
  L10n();

  static L10n? _current;

  static L10n get current {
    assert(_current != null,
        'No instance of L10n was loaded. Try to initialize the L10n delegate before accessing L10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<L10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = L10n();
      L10n._current = instance;

      return instance;
    });
  }

  static L10n of(BuildContext context) {
    final instance = L10n.maybeOf(context);
    assert(instance != null,
        'No instance of L10n present in the widget tree. Did you add L10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static L10n? maybeOf(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  /// `New Game`
  String get newGame {
    return Intl.message(
      'New Game',
      name: 'newGame',
      desc: '',
      args: [],
    );
  }

  /// `{language, select, en{English} es{Español} fr{Français} other{English}}`
  String language(String language) {
    return Intl.select(
      language,
      {
        'en': 'English',
        'es': 'Español',
        'fr': 'Français',
        'other': 'English',
      },
      name: 'language',
      desc: '',
      args: [language],
    );
  }

  /// `Tutorial`
  String get tutorial {
    return Intl.message(
      'Tutorial',
      name: 'tutorial',
      desc: '',
      args: [],
    );
  }

  /// `Restart`
  String get restart {
    return Intl.message(
      'Restart',
      name: 'restart',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Food`
  String get food {
    return Intl.message(
      'Food',
      name: 'food',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get health {
    return Intl.message(
      'Health',
      name: 'health',
      desc: '',
      args: [],
    );
  }

  /// `Oxygen`
  String get oxygen {
    return Intl.message(
      'Oxygen',
      name: 'oxygen',
      desc: '',
      args: [],
    );
  }

  /// `Carbon FP`
  String get carbonFP {
    return Intl.message(
      'Carbon FP',
      name: 'carbonFP',
      desc: '',
      args: [],
    );
  }

  /// `Coin`
  String get coin {
    return Intl.message(
      'Coin',
      name: 'coin',
      desc: '',
      args: [],
    );
  }

  /// `Cards`
  String get cards {
    return Intl.message(
      'Cards',
      name: 'cards',
      desc: '',
      args: [],
    );
  }

  /// `CarbonFootprint`
  String get carbonFootprint {
    return Intl.message(
      'CarbonFootprint',
      name: 'carbonFootprint',
      desc: '',
      args: [],
    );
  }

  /// `Quest`
  String get quest {
    return Intl.message(
      'Quest',
      name: 'quest',
      desc: '',
      args: [],
    );
  }

  /// `Recipes`
  String get recipes {
    return Intl.message(
      'Recipes',
      name: 'recipes',
      desc: '',
      args: [],
    );
  }

  /// `Achivements`
  String get achivements {
    return Intl.message(
      'Achivements',
      name: 'achivements',
      desc: '',
      args: [],
    );
  }

  /// `Time: {time} sec`
  String timeRecipe(Object time) {
    return Intl.message(
      'Time: $time sec',
      name: 'timeRecipe',
      desc: '',
      args: [time],
    );
  }

  /// `GREENSTACK`
  String get welcomeTitle {
    return Intl.message(
      'GREENSTACK',
      name: 'welcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to change your habits? To do so, move, group, create and sell cards.`
  String get welcomeSubtitle {
    return Intl.message(
      'Do you want to change your habits? To do so, move, group, create and sell cards.',
      name: 'welcomeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Press enter`
  String get welcomeAction {
    return Intl.message(
      'Press enter',
      name: 'welcomeAction',
      desc: '',
      args: [],
    );
  }

  /// `GREENSTACK`
  String get onboardingTitle {
    return Intl.message(
      'GREENSTACK',
      name: 'onboardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Follow the missions and look for the recipes in the packs.\n \n CONTROLS: Space = Pause, key m = Sound ON/OFF, key f = Fast ON/OFF`
  String get onboardingSubtitle {
    return Intl.message(
      'Follow the missions and look for the recipes in the packs.\n \n CONTROLS: Space = Pause, key m = Sound ON/OFF, key f = Fast ON/OFF',
      name: 'onboardingSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Press enter`
  String get onboardingAction {
    return Intl.message(
      'Press enter',
      name: 'onboardingAction',
      desc: '',
      args: [],
    );
  }

  /// `G A M E   O V E R`
  String get gameOverTitle {
    return Intl.message(
      'G A M E   O V E R',
      name: 'gameOverTitle',
      desc: '',
      args: [],
    );
  }

  /// `Tap to Play Again`
  String get gameOverSubtitle {
    return Intl.message(
      'Tap to Play Again',
      name: 'gameOverSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Press enter x 2`
  String get gameOverAction {
    return Intl.message(
      'Press enter x 2',
      name: 'gameOverAction',
      desc: '',
      args: [],
    );
  }

  /// `Y O U   W O N ! ! !`
  String get wonTitle {
    return Intl.message(
      'Y O U   W O N ! ! !',
      name: 'wonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Tap to Play Again`
  String get wonSubtitle {
    return Intl.message(
      'Tap to Play Again',
      name: 'wonSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Press enter`
  String get wonAction {
    return Intl.message(
      'Press enter',
      name: 'wonAction',
      desc: '',
      args: [],
    );
  }

  /// `You must sell some cards`
  String get sellingTitle {
    return Intl.message(
      'You must sell some cards',
      name: 'sellingTitle',
      desc: '',
      args: [],
    );
  }

  /// `You must sell some cards that consume energy`
  String get energyTitle {
    return Intl.message(
      'You must sell some cards that consume energy',
      name: 'energyTitle',
      desc: '',
      args: [],
    );
  }

  /// `The First Craft`
  String get achivementFirtsCraft {
    return Intl.message(
      'The First Craft',
      name: 'achivementFirtsCraft',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations! You crafted your first item. Who knew sticks and stones could do so much?`
  String get achivementFirtsCraftDescription {
    return Intl.message(
      'Congratulations! You crafted your first item. Who knew sticks and stones could do so much?',
      name: 'achivementFirtsCraftDescription',
      desc: '',
      args: [],
    );
  }

  /// `The First Day`
  String get achivementFirtsDay {
    return Intl.message(
      'The First Day',
      name: 'achivementFirtsDay',
      desc: '',
      args: [],
    );
  }

  /// `You survived your first day! The future is looking bright... or is that just the sunrise?`
  String get achivementFirtsDayDescription {
    return Intl.message(
      'You survived your first day! The future is looking bright... or is that just the sunrise?',
      name: 'achivementFirtsDayDescription',
      desc: '',
      args: [],
    );
  }

  /// `Eggvolution`
  String get achivementEggvolution {
    return Intl.message(
      'Eggvolution',
      name: 'achivementEggvolution',
      desc: '',
      args: [],
    );
  }

  /// `10 eggs on the map? You're practically a poultry farmer now!`
  String get achivementEggvolutionDescription {
    return Intl.message(
      '10 eggs on the map? You`re practically a poultry farmer now!',
      name: 'achivementEggvolutionDescription',
      desc: '',
      args: [],
    );
  }

  /// `The Cow's Fault`
  String get achivementCow {
    return Intl.message(
      'The Cow\'s Fault',
      name: 'achivementCow',
      desc: '',
      args: [],
    );
  }

  /// `You found your first poop. This is a crappy situation, but someone's gotta handle it.`
  String get achivementCowDescription {
    return Intl.message(
      'You found your first poop. This is a crappy situation, but someone\'s gotta handle it.',
      name: 'achivementCowDescription',
      desc: '',
      args: [],
    );
  }

  /// `Fur-iends`
  String get achivementFuriends {
    return Intl.message(
      'Fur-iends',
      name: 'achivementFuriends',
      desc: '',
      args: [],
    );
  }

  /// `You got your first dog! Remember, with great power comes great responsibility... to pick up poop.`
  String get achivementFuriendsDescription {
    return Intl.message(
      'You got your first dog! Remember, with great power comes great responsibility... to pick up poop.',
      name: 'achivementFuriendsDescription',
      desc: '',
      args: [],
    );
  }

  /// `DevsCoverer`
  String get achivementDevsCoverer {
    return Intl.message(
      'DevsCoverer',
      name: 'achivementDevsCoverer',
      desc: '',
      args: [],
    );
  }

  /// `You unlocked the Dev card. We're not sure if you should be proud or concerned.`
  String get achivementDevsCovererDescription {
    return Intl.message(
      'You unlocked the Dev card. We\'re not sure if you should be proud or concerned.',
      name: 'achivementDevsCovererDescription',
      desc: '',
      args: [],
    );
  }

  /// `Let There Be Light`
  String get achivementLight {
    return Intl.message(
      'Let There Be Light',
      name: 'achivementLight',
      desc: '',
      args: [],
    );
  }

  /// `You made your first solar panel. Who needs the sun when you have technology?`
  String get achivementLightDescription {
    return Intl.message(
      'You made your first solar panel. Who needs the sun when you have technology?',
      name: 'achivementLightDescription',
      desc: '',
      args: [],
    );
  }

  /// `Full Belly, Happy Heart`
  String get achivementFullBelly {
    return Intl.message(
      'Full Belly, Happy Heart',
      name: 'achivementFullBelly',
      desc: '',
      args: [],
    );
  }

  /// `You made your first farm banquet. Bon appétit!`
  String get achivementFullBellyDescription {
    return Intl.message(
      'You made your first farm banquet. Bon appétit!',
      name: 'achivementFullBellyDescription',
      desc: '',
      args: [],
    );
  }

  /// `Green Life`
  String get achivementGreenLife {
    return Intl.message(
      'Green Life',
      name: 'achivementGreenLife',
      desc: '',
      args: [],
    );
  }

  /// `You won the game for the first time. Mother Nature would be proud.`
  String get achivementGreenLifeDescription {
    return Intl.message(
      'You won the game for the first time. Mother Nature would be proud.',
      name: 'achivementGreenLifeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Apocalypse`
  String get achivementApocalypse {
    return Intl.message(
      'Apocalypse',
      name: 'achivementApocalypse',
      desc: '',
      args: [],
    );
  }

  /// `You lost the game for the first time. It's not the end of the world... oh wait.`
  String get achivementApocalypseDescription {
    return Intl.message(
      'You lost the game for the first time. It\'s not the end of the world... oh wait.',
      name: 'achivementApocalypseDescription',
      desc: '',
      args: [],
    );
  }

  /// `Addiction to the Environment`
  String get achivementAddiction {
    return Intl.message(
      'Addiction to the Environment',
      name: 'achivementAddiction',
      desc: '',
      args: [],
    );
  }

  /// `You got all the achievements. You're officially a green thumb!`
  String get achivementAddictionDescription {
    return Intl.message(
      'You got all the achievements. You\'re officially a green thumb!',
      name: 'achivementAddictionDescription',
      desc: '',
      args: [],
    );
  }

  /// `Go to Work`
  String get questWork {
    return Intl.message(
      'Go to Work',
      name: 'questWork',
      desc: '',
      args: [],
    );
  }

  /// `Start your journey by heading to work.`
  String get questWorkDescription {
    return Intl.message(
      'Start your journey by heading to work.',
      name: 'questWorkDescription',
      desc: '',
      args: [],
    );
  }

  /// `Sell the Salary Card`
  String get questSalary {
    return Intl.message(
      'Sell the Salary Card',
      name: 'questSalary',
      desc: '',
      args: [],
    );
  }

  /// `Earn some initial coins by selling your salary card.`
  String get questSalaryDescription {
    return Intl.message(
      'Earn some initial coins by selling your salary card.',
      name: 'questSalaryDescription',
      desc: '',
      args: [],
    );
  }

  /// `Buy the Initial Pack`
  String get questInitial {
    return Intl.message(
      'Buy the Initial Pack',
      name: 'questInitial',
      desc: '',
      args: [],
    );
  }

  /// `Invest in your survival by purchasing the Initial Pack.`
  String get questInitialDescription {
    return Intl.message(
      'Invest in your survival by purchasing the Initial Pack.',
      name: 'questInitialDescription',
      desc: '',
      args: [],
    );
  }

  /// `Buy Food at CCBurger`
  String get questBuyFood {
    return Intl.message(
      'Buy Food at CCBurger',
      name: 'questBuyFood',
      desc: '',
      args: [],
    );
  }

  /// `Keep your hunger at bay with a meal from CCBurger.`
  String get questBuyFoodDescription {
    return Intl.message(
      'Keep your hunger at bay with a meal from CCBurger.',
      name: 'questBuyFoodDescription',
      desc: '',
      args: [],
    );
  }

  /// `Survive the First Day`
  String get questSurvive {
    return Intl.message(
      'Survive the First Day',
      name: 'questSurvive',
      desc: '',
      args: [],
    );
  }

  /// `Make it through your first day without dying.`
  String get questSurviveDescription {
    return Intl.message(
      'Make it through your first day without dying.',
      name: 'questSurviveDescription',
      desc: '',
      args: [],
    );
  }

  /// `Craft a Crafting Table`
  String get questCrafting {
    return Intl.message(
      'Craft a Crafting Table',
      name: 'questCrafting',
      desc: '',
      args: [],
    );
  }

  /// `Build a crafting table to unlock new crafting possibilities.`
  String get questCraftingDescription {
    return Intl.message(
      'Build a crafting table to unlock new crafting possibilities.',
      name: 'questCraftingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Unlock an Idea`
  String get questUnlock {
    return Intl.message(
      'Unlock an Idea',
      name: 'questUnlock',
      desc: '',
      args: [],
    );
  }

  /// `Spend your coins in any pack to unlock a new ideas.`
  String get questUnlockDescription {
    return Intl.message(
      'Spend your coins in any pack to unlock a new ideas.',
      name: 'questUnlockDescription',
      desc: '',
      args: [],
    );
  }

  /// `Recycle 30 Plastics`
  String get questRecycle {
    return Intl.message(
      'Recycle 30 Plastics',
      name: 'questRecycle',
      desc: '',
      args: [],
    );
  }

  /// `Contribute to the environment by recycling 30 plastics.`
  String get questRecycleDescription {
    return Intl.message(
      'Contribute to the environment by recycling 30 plastics.',
      name: 'questRecycleDescription',
      desc: '',
      args: [],
    );
  }

  /// `Craft a Farm Feast`
  String get questCraftFeast {
    return Intl.message(
      'Craft a Farm Feast',
      name: 'questCraftFeast',
      desc: '',
      args: [],
    );
  }

  /// `Prepare a delicious farm feast to restore your energy.`
  String get questCraftFeastDescription {
    return Intl.message(
      'Prepare a delicious farm feast to restore your energy.',
      name: 'questCraftFeastDescription',
      desc: '',
      args: [],
    );
  }

  /// `Craft a Solar Panel`
  String get questCraftPanel {
    return Intl.message(
      'Craft a Solar Panel',
      name: 'questCraftPanel',
      desc: '',
      args: [],
    );
  }

  /// `Harness the power of the sun with a solar panel.`
  String get questCraftPanelDescription {
    return Intl.message(
      'Harness the power of the sun with a solar panel.',
      name: 'questCraftPanelDescription',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `search`
  String get search {
    return Intl.message(
      'search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `travel`
  String get travel {
    return Intl.message(
      'travel',
      name: 'travel',
      desc: '',
      args: [],
    );
  }

  /// `wishList`
  String get wishList {
    return Intl.message(
      'wishList',
      name: 'wishList',
      desc: '',
      args: [],
    );
  }

  /// `menssages`
  String get menssages {
    return Intl.message(
      'menssages',
      name: 'menssages',
      desc: '',
      args: [],
    );
  }

  /// `wallet`
  String get wallet {
    return Intl.message(
      'wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Demo`
  String get flutterDemo {
    return Intl.message(
      'Flutter Demo',
      name: 'flutterDemo',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Demo Home Page`
  String get flutterDemoHomePage {
    return Intl.message(
      'Flutter Demo Home Page',
      name: 'flutterDemoHomePage',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `you`
  String get you {
    return Intl.message(
      'you',
      name: 'you',
      desc: '',
      args: [],
    );
  }

  /// `What are you watching? -_-`
  String get youDescription {
    return Intl.message(
      'What are you watching? -_-',
      name: 'youDescription',
      desc: '',
      args: [],
    );
  }

  /// `Rock`
  String get rock {
    return Intl.message(
      'Rock',
      name: 'rock',
      desc: '',
      args: [],
    );
  }

  /// `So sturdy that even Goliath would tremble at the sight of it. Ideal for building or hurling pesky giants.`
  String get rockDescription {
    return Intl.message(
      'So sturdy that even Goliath would tremble at the sight of it. Ideal for building or hurling pesky giants.',
      name: 'rockDescription',
      desc: '',
      args: [],
    );
  }

  /// `Iron`
  String get iron {
    return Intl.message(
      'Iron',
      name: 'iron',
      desc: '',
      args: [],
    );
  }

  /// `Stronger than mom's love. Ideal for creating structures`
  String get ironDescription {
    return Intl.message(
      'Stronger than mom`s love. Ideal for creating structures',
      name: 'ironDescription',
      desc: '',
      args: [],
    );
  }

  /// `Coal`
  String get coal {
    return Intl.message(
      'Coal',
      name: 'coal',
      desc: '',
      args: [],
    );
  }

  /// `An essential energy source and raw material for the manufacture of silicon.`
  String get coalDescription {
    return Intl.message(
      'An essential energy source and raw material for the manufacture of silicon.',
      name: 'coalDescription',
      desc: '',
      args: [],
    );
  }

  /// `Wood`
  String get wood {
    return Intl.message(
      'Wood',
      name: 'wood',
      desc: '',
      args: [],
    );
  }

  /// `Renewable and abundant, wood is essential for the construction and manufacture of a variety of objects.`
  String get woodDescription {
    return Intl.message(
      'Renewable and abundant, wood is essential for the construction and manufacture of a variety of objects.',
      name: 'woodDescription',
      desc: '',
      args: [],
    );
  }

  /// `Glass`
  String get glass {
    return Intl.message(
      'Glass',
      name: 'glass',
      desc: '',
      args: [],
    );
  }

  /// `The invisible friend of windows and bottles: glass, the material that allows you to spy on your neighbors without them knowing!`
  String get glassDescription {
    return Intl.message(
      'The invisible friend of windows and bottles: glass, the material that allows you to spy on your neighbors without them knowing!',
      name: 'glassDescription',
      desc: '',
      args: [],
    );
  }

  /// `Plastic`
  String get plastic {
    return Intl.message(
      'Plastic',
      name: 'plastic',
      desc: '',
      args: [],
    );
  }

  /// `The stuff that never goes bad, just like your student debts.`
  String get plasticDescription {
    return Intl.message(
      'The stuff that never goes bad, just like your student debts.',
      name: 'plasticDescription',
      desc: '',
      args: [],
    );
  }

  /// `Copper`
  String get copper {
    return Intl.message(
      'Copper',
      name: 'copper',
      desc: '',
      args: [],
    );
  }

  /// `An excellent conductor of electricity, copper is essential for the manufacture of cables and electronic components.`
  String get copperDescription {
    return Intl.message(
      'An excellent conductor of electricity, copper is essential for the manufacture of cables and electronic components.',
      name: 'copperDescription',
      desc: '',
      args: [],
    );
  }

  /// `Dirt`
  String get dirt {
    return Intl.message(
      'Dirt',
      name: 'dirt',
      desc: '',
      args: [],
    );
  }

  /// `Nature's embrace, the mother of all plants and worms! Rich in nutrients and essential for plant life`
  String get dirtDescription {
    return Intl.message(
      'Nature\'s embrace, the mother of all plants and worms! Rich in nutrients and essential for plant life',
      name: 'dirtDescription',
      desc: '',
      args: [],
    );
  }

  /// `Water`
  String get water {
    return Intl.message(
      'Water',
      name: 'water',
      desc: '',
      args: [],
    );
  }

  /// `The elixir of life, essential for the survival of all known life forms.`
  String get waterDescription {
    return Intl.message(
      'The elixir of life, essential for the survival of all known life forms.',
      name: 'waterDescription',
      desc: '',
      args: [],
    );
  }

  /// `Iron Ingots`
  String get ironIngots {
    return Intl.message(
      'Iron Ingots',
      name: 'ironIngots',
      desc: '',
      args: [],
    );
  }

  /// `Refined and robust iron ingots ready to be forged into the strongest tools. With these ingots, even Iron Man would be jealous!`
  String get ironIngotsDescription {
    return Intl.message(
      'Refined and robust iron ingots ready to be forged into the strongest tools. With these ingots, even Iron Man would be jealous!',
      name: 'ironIngotsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Silicon`
  String get silicon {
    return Intl.message(
      'Silicon',
      name: 'silicon',
      desc: '',
      args: [],
    );
  }

  /// `The essential building block for modern technology, silicon is the cornerstone of electronics. Who knew that beach sand could be so useful? Thank you, silicon!`
  String get siliconDescription {
    return Intl.message(
      'The essential building block for modern technology, silicon is the cornerstone of electronics. Who knew that beach sand could be so useful? Thank you, silicon!',
      name: 'siliconDescription',
      desc: '',
      args: [],
    );
  }

  /// `Copper line`
  String get copperLine {
    return Intl.message(
      'Copper line',
      name: 'copperLine',
      desc: '',
      args: [],
    );
  }

  /// `They need to be refined to conduct energy. These cables have a new fashion. Now they look more naked than ever`
  String get copperLineDescription {
    return Intl.message(
      'They need to be refined to conduct energy. These cables have a new fashion. Now they look more naked than ever',
      name: 'copperLineDescription',
      desc: '',
      args: [],
    );
  }

  /// `Insulators`
  String get insulators {
    return Intl.message(
      'Insulators',
      name: 'insulators',
      desc: '',
      args: [],
    );
  }

  /// `They protect against short circuits and electric shocks, keeping the current in place. Who would have thought that a little plastic could prevent so much electrical drama?`
  String get insulatorsDescription {
    return Intl.message(
      'They protect against short circuits and electric shocks, keeping the current in place. Who would have thought that a little plastic could prevent so much electrical drama?',
      name: 'insulatorsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Solar cells`
  String get solarCells {
    return Intl.message(
      'Solar cells',
      name: 'solarCells',
      desc: '',
      args: [],
    );
  }

  /// `These solar cells transform sunlight into electricity, providing clean, sustainable energy and making the sun work overtime. Good job, sunshine.`
  String get solarCellsDescription {
    return Intl.message(
      'These solar cells transform sunlight into electricity, providing clean, sustainable energy and making the sun work overtime. Good job, sunshine.',
      name: 'solarCellsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Structure`
  String get structure {
    return Intl.message(
      'Structure',
      name: 'structure',
      desc: '',
      args: [],
    );
  }

  /// `It provides stability and support for various constructions, from houses to machinery. So strong that even Chuck Norris would be proud.`
  String get structureDescription {
    return Intl.message(
      'It provides stability and support for various constructions, from houses to machinery. So strong that even Chuck Norris would be proud.',
      name: 'structureDescription',
      desc: '',
      args: [],
    );
  }

  /// `Cables`
  String get cables {
    return Intl.message(
      'Cables',
      name: 'cables',
      desc: '',
      args: [],
    );
  }

  /// `Cables ready to connect and transmit power efficiently. These functional cables are as reliable as the 'dog ate my homework' excuse.`
  String get cablesDescription {
    return Intl.message(
      'Cables ready to connect and transmit power efficiently. These functional cables are as reliable as the \'dog ate my homework\' excuse.',
      name: 'cablesDescription',
      desc: '',
      args: [],
    );
  }

  /// `Fast Food`
  String get fastFood {
    return Intl.message(
      'Fast Food',
      name: 'fastFood',
      desc: '',
      args: [],
    );
  }

  /// `Foods prepared quickly and conveniently, but with low nutritional value.`
  String get fastFoodDescription {
    return Intl.message(
      'Foods prepared quickly and conveniently, but with low nutritional value.',
      name: 'fastFoodDescription',
      desc: '',
      args: [],
    );
  }

  /// `Wheat`
  String get wheat {
    return Intl.message(
      'Wheat',
      name: 'wheat',
      desc: '',
      args: [],
    );
  }

  /// `Cereal used to make flour and various baked goods. And although it may not seem like it, cows love it.`
  String get wheatDescription {
    return Intl.message(
      'Cereal used to make flour and various baked goods. And although it may not seem like it, cows love it.',
      name: 'wheatDescription',
      desc: '',
      args: [],
    );
  }

  /// `Carrot`
  String get carrot {
    return Intl.message(
      'Carrot',
      name: 'carrot',
      desc: '',
      args: [],
    );
  }

  /// `A vegetable rich in nutrients and crucial to maintain a balanced diet. So good that it might make Bugs Bunny give up on the competition's carrots.`
  String get carrotDescription {
    return Intl.message(
      'A vegetable rich in nutrients and crucial to maintain a balanced diet. So good that it might make Bugs Bunny give up on the competition\'s carrots.',
      name: 'carrotDescription',
      desc: '',
      args: [],
    );
  }

  /// `Potato`
  String get potato {
    return Intl.message(
      'Potato',
      name: 'potato',
      desc: '',
      args: [],
    );
  }

  /// `The humble potato, the unsung hero of the kitchen, making stomachs happy since time immemorial.`
  String get potatoDescription {
    return Intl.message(
      'The humble potato, the unsung hero of the kitchen, making stomachs happy since time immemorial.',
      name: 'potatoDescription',
      desc: '',
      args: [],
    );
  }

  /// `Apple`
  String get apple {
    return Intl.message(
      'Apple',
      name: 'apple',
      desc: '',
      args: [],
    );
  }

  /// `A fresh and crunchy fruit, full of flavor and nutrients. Watch out for apples falling from the sky! If Newton could have a 'eureka' moment with one, who knows what brilliant ideas you might have?`
  String get appleDescription {
    return Intl.message(
      'A fresh and crunchy fruit, full of flavor and nutrients. Watch out for apples falling from the sky! If Newton could have a \'eureka\' moment with one, who knows what brilliant ideas you might have?',
      name: 'appleDescription',
      desc: '',
      args: [],
    );
  }

  /// `Milk`
  String get milk {
    return Intl.message(
      'Milk',
      name: 'milk',
      desc: '',
      args: [],
    );
  }

  /// `A fundamental source of calcium and nutrients for a balanced diet. White elixir of life that helps you grow strong and big.`
  String get milkDescription {
    return Intl.message(
      'A fundamental source of calcium and nutrients for a balanced diet. White elixir of life that helps you grow strong and big.',
      name: 'milkDescription',
      desc: '',
      args: [],
    );
  }

  /// `Meat`
  String get meat {
    return Intl.message(
      'Meat',
      name: 'meat',
      desc: '',
      args: [],
    );
  }

  /// `An important source of protein and nutrients to keep you healthy and full of energy. Nothing like a good piece of meat to satisfy your growling stomach.`
  String get meatDescription {
    return Intl.message(
      'An important source of protein and nutrients to keep you healthy and full of energy. Nothing like a good piece of meat to satisfy your growling stomach.',
      name: 'meatDescription',
      desc: '',
      args: [],
    );
  }

  /// `Banana`
  String get Banana {
    return Intl.message(
      'Banana',
      name: 'Banana',
      desc: '',
      args: [],
    );
  }

  /// `The nutritious banana, natural energy in its yellow packaging. It comes with its own case and the promise to make you smile, even if you look like a monkey eating it.`
  String get bananaDescription {
    return Intl.message(
      'The nutritious banana, natural energy in its yellow packaging. It comes with its own case and the promise to make you smile, even if you look like a monkey eating it.',
      name: 'bananaDescription',
      desc: '',
      args: [],
    );
  }

  /// `Egg`
  String get egg {
    return Intl.message(
      'Egg',
      name: 'egg',
      desc: '',
      args: [],
    );
  }

  /// `The egg, source of proteins of the highest quality and versatility in the kitchen. It faces hot pans and whisks without fear.`
  String get eggDescription {
    return Intl.message(
      'The egg, source of proteins of the highest quality and versatility in the kitchen. It faces hot pans and whisks without fear.',
      name: 'eggDescription',
      desc: '',
      args: [],
    );
  }

  /// `Stew`
  String get stew {
    return Intl.message(
      'Stew',
      name: 'stew',
      desc: '',
      args: [],
    );
  }

  /// `Traditional dish that combines meat, vegetables and broth in a comforting preparation. Like a hug in the form of food, perfect for those cold days or when the soul needs comfort.`
  String get stewDescription {
    return Intl.message(
      'Traditional dish that combines meat, vegetables and broth in a comforting preparation. Like a hug in the form of food, perfect for those cold days or when the soul needs comfort.',
      name: 'stewDescription',
      desc: '',
      args: [],
    );
  }

  /// `Fried Meat`
  String get friedMeat {
    return Intl.message(
      'Fried Meat',
      name: 'friedMeat',
      desc: '',
      args: [],
    );
  }

  /// `The art of transforming the ordinary into the extraordinary with a little oil and a hot frying pan.`
  String get friedMeatDescription {
    return Intl.message(
      'The art of transforming the ordinary into the extraordinary with a little oil and a hot frying pan.',
      name: 'friedMeatDescription',
      desc: '',
      args: [],
    );
  }

  /// `Flour`
  String get flour {
    return Intl.message(
      'Flour',
      name: 'flour',
      desc: '',
      args: [],
    );
  }

  /// `Flour, the base of many baked delicacies and dishes from around the world. The magic powder that turns any recipe into something delicious. Just add water and faith.`
  String get flourDescription {
    return Intl.message(
      'Flour, the base of many baked delicacies and dishes from around the world. The magic powder that turns any recipe into something delicious. Just add water and faith.',
      name: 'flourDescription',
      desc: '',
      args: [],
    );
  }

  /// `Bread`
  String get bread {
    return Intl.message(
      'Bread',
      name: 'bread',
      desc: '',
      args: [],
    );
  }

  /// `Bread, a staple food on the table of millions of people around the world. The reason mankind invented butter. And jam!`
  String get breadDescription {
    return Intl.message(
      'Bread, a staple food on the table of millions of people around the world. The reason mankind invented butter. And jam!',
      name: 'breadDescription',
      desc: '',
      args: [],
    );
  }

  /// `Cake`
  String get cake {
    return Intl.message(
      'Cake',
      name: 'cake',
      desc: '',
      args: [],
    );
  }

  /// `A delicious cake made with fresh and loving ingredients, perfect for celebrating special occasions.`
  String get cakeDescription {
    return Intl.message(
      'A delicious cake made with fresh and loving ingredients, perfect for celebrating special occasions.',
      name: 'cakeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Healthy Salad`
  String get healthySalad {
    return Intl.message(
      'Healthy Salad',
      name: 'healthySalad',
      desc: '',
      args: [],
    );
  }

  /// `A fresh mix of vegetables and healthy toppings. Nothing like healthy food.`
  String get healthySaladDescription {
    return Intl.message(
      'A fresh mix of vegetables and healthy toppings. Nothing like healthy food.',
      name: 'healthySaladDescription',
      desc: '',
      args: [],
    );
  }

  /// `Fruit Shake`
  String get fruitShake {
    return Intl.message(
      'Fruit Shake',
      name: 'fruitShake',
      desc: '',
      args: [],
    );
  }

  /// `A refreshing blend of fresh fruits, perfect for recharging energy and vitamins.`
  String get fruitShakeDescription {
    return Intl.message(
      'A refreshing blend of fresh fruits, perfect for recharging energy and vitamins.',
      name: 'fruitShakeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Omelet`
  String get omelet {
    return Intl.message(
      'Omelet',
      name: 'omelet',
      desc: '',
      args: [],
    );
  }

  /// `A delicious combination of potatoes and eggs, perfect for any meal with a flavor that will make even the most serious chef smile.`
  String get omeletDescription {
    return Intl.message(
      'A delicious combination of potatoes and eggs, perfect for any meal with a flavor that will make even the most serious chef smile.',
      name: 'omeletDescription',
      desc: '',
      args: [],
    );
  }

  /// `Apple Pie`
  String get applePie {
    return Intl.message(
      'Apple Pie',
      name: 'applePie',
      desc: '',
      args: [],
    );
  }

  /// `A classic apple pie baked with love, that not only fills the stomach but also the heart. This pie will make you forget all your worries, at least until it's gone!`
  String get applePieDescription {
    return Intl.message(
      'A classic apple pie baked with love, that not only fills the stomach but also the heart. This pie will make you forget all your worries, at least until it\'s gone!',
      name: 'applePieDescription',
      desc: '',
      args: [],
    );
  }

  /// `Farm Feast`
  String get farmFeast {
    return Intl.message(
      'Farm Feast',
      name: 'farmFeast',
      desc: '',
      args: [],
    );
  }

  /// `The feast that makes farms feel like palaces. A complete meal that blends the best farm products for a satisfying culinary experience, prepared with love and care to share with your loved ones.`
  String get farmFeastDescription {
    return Intl.message(
      'The feast that makes farms feel like palaces. A complete meal that blends the best farm products for a satisfying culinary experience, prepared with love and care to share with your loved ones.',
      name: 'farmFeastDescription',
      desc: '',
      args: [],
    );
  }

  /// `Baul`
  String get baul {
    return Intl.message(
      'Baul',
      name: 'baul',
      desc: '',
      args: [],
    );
  }

  /// `Storage space for your most precious and necessary possessions. A reliable container that adds a little extra to your card storage capacity.`
  String get baulDescription {
    return Intl.message(
      'Storage space for your most precious and necessary possessions. A reliable container that adds a little extra to your card storage capacity.',
      name: 'baulDescription',
      desc: '',
      args: [],
    );
  }

  /// `Warehouse`
  String get warehouse {
    return Intl.message(
      'Warehouse',
      name: 'warehouse',
      desc: '',
      args: [],
    );
  }

  /// `The place where your stuff ends up when you decide it's too valuable to throw away. A large, organized space to store and manage your resources efficiently. Greatly increases your card storage capacity.`
  String get warehouseDescription {
    return Intl.message(
      'The place where your stuff ends up when you decide it\'s too valuable to throw away. A large, organized space to store and manage your resources efficiently. Greatly increases your card storage capacity.',
      name: 'warehouseDescription',
      desc: '',
      args: [],
    );
  }

  /// `Furnace`
  String get furnace {
    return Intl.message(
      'Furnace',
      name: 'furnace',
      desc: '',
      args: [],
    );
  }

  /// `The scene of the most epic feats, where materials become masterpieces (or disasters). Whether cooking succulent delicacies or melting metals and creating new materials.`
  String get furnaceDescription {
    return Intl.message(
      'The scene of the most epic feats, where materials become masterpieces (or disasters). Whether cooking succulent delicacies or melting metals and creating new materials.',
      name: 'furnaceDescription',
      desc: '',
      args: [],
    );
  }

  /// `Crafting Table`
  String get craftingTable {
    return Intl.message(
      'Crafting Table',
      name: 'craftingTable',
      desc: '',
      args: [],
    );
  }

  /// `The epicenter of creation in your village. Here, ideas become reality. From simple shelves to complex structures, it all starts here.`
  String get craftingTableDescription {
    return Intl.message(
      'The epicenter of creation in your village. Here, ideas become reality. From simple shelves to complex structures, it all starts here.',
      name: 'craftingTableDescription',
      desc: '',
      args: [],
    );
  }

  /// `Sawmill`
  String get sawmill {
    return Intl.message(
      'Sawmill',
      name: 'sawmill',
      desc: '',
      args: [],
    );
  }

  /// `The wood workshop, where trees sacrifice their being to become finely crafted furniture... and birds cry silently for their loss.`
  String get sawmillDescription {
    return Intl.message(
      'The wood workshop, where trees sacrifice their being to become finely crafted furniture... and birds cry silently for their loss.',
      name: 'sawmillDescription',
      desc: '',
      args: [],
    );
  }

  /// `Electric table`
  String get electricTable {
    return Intl.message(
      'Electric table',
      name: 'electricTable',
      desc: '',
      args: [],
    );
  }

  /// `A specialized table equipped with tools and equipment for the creation of electronic devices. Try not to lose patience when the wires decide to get tangled up like a snake party.`
  String get electricTableDescription {
    return Intl.message(
      'A specialized table equipped with tools and equipment for the creation of electronic devices. Try not to lose patience when the wires decide to get tangled up like a snake party.',
      name: 'electricTableDescription',
      desc: '',
      args: [],
    );
  }

  /// `Solar panel`
  String get solarPanel {
    return Intl.message(
      'Solar panel',
      name: 'solarPanel',
      desc: '',
      args: [],
    );
  }

  /// `A solar panel designed to capture solar energy and convert it into a clean, renewable energy source that harnesses sunlight to generate electricity and reduce dependence on fossil fuels.`
  String get solarPanelDescription {
    return Intl.message(
      'A solar panel designed to capture solar energy and convert it into a clean, renewable energy source that harnesses sunlight to generate electricity and reduce dependence on fossil fuels.',
      name: 'solarPanelDescription',
      desc: '',
      args: [],
    );
  }

  /// `Farm`
  String get farm {
    return Intl.message(
      'Farm',
      name: 'farm',
      desc: '',
      args: [],
    );
  }

  /// `A plot of fertile land dedicated to agricultural production. It grows essential foods more efficiently to produce a variety of fresh and healthy foods.`
  String get farmDescription {
    return Intl.message(
      'A plot of fertile land dedicated to agricultural production. It grows essential foods more efficiently to produce a variety of fresh and healthy foods.',
      name: 'farmDescription',
      desc: '',
      args: [],
    );
  }

  /// `Orchard`
  String get orchard {
    return Intl.message(
      'Orchard',
      name: 'orchard',
      desc: '',
      args: [],
    );
  }

  /// `Although the fruits are delicious, this fruit plot is less efficient than the Farm. But who can resist a freshly picked apple.`
  String get orchardDescription {
    return Intl.message(
      'Although the fruits are delicious, this fruit plot is less efficient than the Farm. But who can resist a freshly picked apple.',
      name: 'orchardDescription',
      desc: '',
      args: [],
    );
  }

  /// `Mill`
  String get mill {
    return Intl.message(
      'Mill',
      name: 'mill',
      desc: '',
      args: [],
    );
  }

  /// `Don Quixote would hate it, but your grains will love it. A mill that turns wheat into flour, an essential piece of food.`
  String get millDescription {
    return Intl.message(
      'Don Quixote would hate it, but your grains will love it. A mill that turns wheat into flour, an essential piece of food.',
      name: 'millDescription',
      desc: '',
      args: [],
    );
  }

  /// `Greenhouse`
  String get greenhouse {
    return Intl.message(
      'Greenhouse',
      name: 'greenhouse',
      desc: '',
      args: [],
    );
  }

  /// `A greenhouse where plants thrive like they're at a spa day, soaking in sun rays and sipping on nutrient cocktails. Improves crop production, allowing you to grow plants more effectively.`
  String get greenhouseDescription {
    return Intl.message(
      'A greenhouse where plants thrive like they\'re at a spa day, soaking in sun rays and sipping on nutrient cocktails. Improves crop production, allowing you to grow plants more effectively.',
      name: 'greenhouseDescription',
      desc: '',
      args: [],
    );
  }

  /// `Wind turbine`
  String get windTurbine {
    return Intl.message(
      'Wind turbine',
      name: 'windTurbine',
      desc: '',
      args: [],
    );
  }

  /// `Catches wind like a superhero catches villains. A clean and renewable source of energy, capturing the power of the wind to light and heat our homes.`
  String get windTurbineDescription {
    return Intl.message(
      'Catches wind like a superhero catches villains. A clean and renewable source of energy, capturing the power of the wind to light and heat our homes.',
      name: 'windTurbineDescription',
      desc: '',
      args: [],
    );
  }

  /// `Recycler`
  String get recycler {
    return Intl.message(
      'Recycler',
      name: 'recycler',
      desc: '',
      args: [],
    );
  }

  /// `An advanced Recycling Center that allows you to disassemble and reuse the cards you no longer need, giving you back the materials for future projects. An 'undo' button for unwanted constructions.`
  String get recyclerDescription {
    return Intl.message(
      'An advanced Recycling Center that allows you to disassemble and reuse the cards you no longer need, giving you back the materials for future projects. An \'undo\' button for unwanted constructions.',
      name: 'recyclerDescription',
      desc: '',
      args: [],
    );
  }

  /// `Composter`
  String get composter {
    return Intl.message(
      'Composter',
      name: 'composter',
      desc: '',
      args: [],
    );
  }

  /// `Where waste goes to rethink your life choices. A tool to convert organic waste into compost, an essential practice for sustainable agriculture.`
  String get composterDescription {
    return Intl.message(
      'Where waste goes to rethink your life choices. A tool to convert organic waste into compost, an essential practice for sustainable agriculture.',
      name: 'composterDescription',
      desc: '',
      args: [],
    );
  }

  /// `Campfire`
  String get campfire {
    return Intl.message(
      'Campfire',
      name: 'campfire',
      desc: '',
      args: [],
    );
  }

  /// `A heat source and a means of cooking food in the traditional village way, although it may be less efficient than a modern furnace. How about a round of burnt marshmallows?`
  String get campfireDescription {
    return Intl.message(
      'A heat source and a means of cooking food in the traditional village way, although it may be less efficient than a modern furnace. How about a round of burnt marshmallows?',
      name: 'campfireDescription',
      desc: '',
      args: [],
    );
  }

  /// `Dog`
  String get dog {
    return Intl.message(
      'Dog',
      name: 'dog',
      desc: '',
      args: [],
    );
  }

  /// `Man's best friend! He barks, eats, gives you meat for your stew and improves your mood! A furry all-in-one.`
  String get dogDescription {
    return Intl.message(
      'Man\'s best friend! He barks, eats, gives you meat for your stew and improves your mood! A furry all-in-one.',
      name: 'dogDescription',
      desc: '',
      args: [],
    );
  }

  /// `Cow`
  String get cow {
    return Intl.message(
      'Cow',
      name: 'cow',
      desc: '',
      args: [],
    );
  }

  /// `This noble animal produces milk and manure at an impressive rate. Thank you very muuuuuch cow.`
  String get cowDescription {
    return Intl.message(
      'This noble animal produces milk and manure at an impressive rate. Thank you very muuuuuch cow.',
      name: 'cowDescription',
      desc: '',
      args: [],
    );
  }

  /// `Hen`
  String get hen {
    return Intl.message(
      'Hen',
      name: 'hen',
      desc: '',
      args: [],
    );
  }

  /// `A domestic hen that provides a steady supply of fresh eggs. The hen that lays golden eggs. Well, not exactly golden, but almost!`
  String get henDescription {
    return Intl.message(
      'A domestic hen that provides a steady supply of fresh eggs. The hen that lays golden eggs. Well, not exactly golden, but almost!',
      name: 'henDescription',
      desc: '',
      args: [],
    );
  }

  /// `Tree`
  String get tree {
    return Intl.message(
      'Tree',
      name: 'tree',
      desc: '',
      args: [],
    );
  }

  /// `A symbol of life and nature that provides wood to build with and oxygen to breathe. Take care of them as if they were your most precious treasures.`
  String get treeDescription {
    return Intl.message(
      'A symbol of life and nature that provides wood to build with and oxygen to breathe. Take care of them as if they were your most precious treasures.',
      name: 'treeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Energy`
  String get energy {
    return Intl.message(
      'Energy',
      name: 'energy',
      desc: '',
      args: [],
    );
  }

  /// `The spark that starts the village engine just be careful not to accidentally ignite the village. An energy boost to keep your machines running and your mind moving. Increases the length of the day by 20 seconds.`
  String get energyDescription {
    return Intl.message(
      'The spark that starts the village engine just be careful not to accidentally ignite the village. An energy boost to keep your machines running and your mind moving. Increases the length of the day by 20 seconds.',
      name: 'energyDescription',
      desc: '',
      args: [],
    );
  }

  /// `CC Burgers`
  String get ccBurgers {
    return Intl.message(
      'CC Burgers',
      name: 'ccBurgers',
      desc: '',
      args: [],
    );
  }

  /// `Crazy Cave Burgers: The stomach's best friends and the diet's worst enemies. A quick fix for those busy days, even if their nutritional content is as mysterious as the cave they come from.`
  String get ccBurgersDescription {
    return Intl.message(
      'Crazy Cave Burgers: The stomach\'s best friends and the diet\'s worst enemies. A quick fix for those busy days, even if their nutritional content is as mysterious as the cave they come from.',
      name: 'ccBurgersDescription',
      desc: '',
      args: [],
    );
  }

  /// `Employment`
  String get employment {
    return Intl.message(
      'Employment',
      name: 'employment',
      desc: '',
      args: [],
    );
  }

  /// `The village's 9 to 5 system! If you're looking for coins, this is where you line up to trade time for those coveted game coins! There are even rumors that the dog wears a tie on Fridays.`
  String get employmentDescription {
    return Intl.message(
      'The village\'s 9 to 5 system! If you\'re looking for coins, this is where you line up to trade time for those coveted game coins! There are even rumors that the dog wears a tie on Fridays.',
      name: 'employmentDescription',
      desc: '',
      args: [],
    );
  }

  /// `Coal Plant`
  String get coalPlant {
    return Intl.message(
      'Coal Plant',
      name: 'coalPlant',
      desc: '',
      args: [],
    );
  }

  /// `Coal-Fired Power Plant: An environmentally unfriendly but effective energy source. Beware of coal, it can taint your lungs and your conscience.`
  String get coalPlantDescription {
    return Intl.message(
      'Coal-Fired Power Plant: An environmentally unfriendly but effective energy source. Beware of coal, it can taint your lungs and your conscience.',
      name: 'coalPlantDescription',
      desc: '',
      args: [],
    );
  }

  /// `Apple Tree`
  String get appleTree {
    return Intl.message(
      'Apple Tree',
      name: 'appleTree',
      desc: '',
      args: [],
    );
  }

  /// `This apple tree is so generous that even the worms have membership cards. The apples are out of this world!`
  String get appleTreeDescription {
    return Intl.message(
      'This apple tree is so generous that even the worms have membership cards. The apples are out of this world!',
      name: 'appleTreeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Banana Tree`
  String get bananaTree {
    return Intl.message(
      'Banana Tree',
      name: 'bananaTree',
      desc: '',
      args: [],
    );
  }

  /// `A tropical tree that produces a fruit that produces many slips in the world, rich in potassium and other essential nutrients. A tasty and healthy addition to your daily diet.`
  String get bananaTreeDescription {
    return Intl.message(
      'A tropical tree that produces a fruit that produces many slips in the world, rich in potassium and other essential nutrients. A tasty and healthy addition to your daily diet.',
      name: 'bananaTreeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Poop`
  String get poop {
    return Intl.message(
      'Poop',
      name: 'poop',
      desc: '',
      args: [],
    );
  }

  /// `The cycle of life is completed by this humble gift of nature. Beyond its modest appearance, manure is the guardian of ecological balance and soil fertility. What secrets might be buried beneath its surface?`
  String get poopDescription {
    return Intl.message(
      'The cycle of life is completed by this humble gift of nature. Beyond its modest appearance, manure is the guardian of ecological balance and soil fertility. What secrets might be buried beneath its surface?',
      name: 'poopDescription',
      desc: '',
      args: [],
    );
  }

  /// `Planks`
  String get planks {
    return Intl.message(
      'Planks',
      name: 'planks',
      desc: '',
      args: [],
    );
  }

  /// `An essential element in construction, boards are versatile and essential for erecting strong and durable structures.`
  String get planksDescription {
    return Intl.message(
      'An essential element in construction, boards are versatile and essential for erecting strong and durable structures.',
      name: 'planksDescription',
      desc: '',
      args: [],
    );
  }

  /// `Ideas`
  String get ideas {
    return Intl.message(
      'Ideas',
      name: 'ideas',
      desc: '',
      args: [],
    );
  }

  /// `Unlocked {ideas}/{allIdeas} ideas.`
  String unlock(Object ideas, Object allIdeas) {
    return Intl.message(
      'Unlocked $ideas/$allIdeas ideas.',
      name: 'unlock',
      desc: '',
      args: [ideas, allIdeas],
    );
  }

  /// `Probabilities`
  String get probabilities {
    return Intl.message(
      'Probabilities',
      name: 'probabilities',
      desc: '',
      args: [],
    );
  }

  /// `Food Pack`
  String get foodPack {
    return Intl.message(
      'Food Pack',
      name: 'foodPack',
      desc: '',
      args: [],
    );
  }

  /// `Food Card`
  String get foodCard {
    return Intl.message(
      'Food Card',
      name: 'foodCard',
      desc: '',
      args: [],
    );
  }

  /// `Provide 3 food cards`
  String get foodPackDescription {
    return Intl.message(
      'Provide 3 food cards',
      name: 'foodPackDescription',
      desc: '',
      args: [],
    );
  }

  /// `Material Pack`
  String get materialPack {
    return Intl.message(
      'Material Pack',
      name: 'materialPack',
      desc: '',
      args: [],
    );
  }

  /// `Material Card`
  String get materialCard {
    return Intl.message(
      'Material Card',
      name: 'materialCard',
      desc: '',
      args: [],
    );
  }

  /// `Provide 3 material cards`
  String get materialPackDescription {
    return Intl.message(
      'Provide 3 material cards',
      name: 'materialPackDescription',
      desc: '',
      args: [],
    );
  }

  /// `Initial Pack`
  String get initialPack {
    return Intl.message(
      'Initial Pack',
      name: 'initialPack',
      desc: '',
      args: [],
    );
  }

  /// `Initial pack to start your adventure`
  String get initialPackSubtitle {
    return Intl.message(
      'Initial pack to start your adventure',
      name: 'initialPackSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Initial pack to start your adventure`
  String get initialPackDescription {
    return Intl.message(
      'Initial pack to start your adventure',
      name: 'initialPackDescription',
      desc: '',
      args: [],
    );
  }

  /// `Salary`
  String get salary {
    return Intl.message(
      'Salary',
      name: 'salary',
      desc: '',
      args: [],
    );
  }

  /// `Salary`
  String get salaryDescription {
    return Intl.message(
      'Salary',
      name: 'salaryDescription',
      desc: '',
      args: [],
    );
  }

  /// `Structure Pack`
  String get structurePack {
    return Intl.message(
      'Structure Pack',
      name: 'structurePack',
      desc: '',
      args: [],
    );
  }

  /// `Structure Card`
  String get structureCard {
    return Intl.message(
      'Structure Card',
      name: 'structureCard',
      desc: '',
      args: [],
    );
  }

  /// `Provide 3 structure cards`
  String get structurePackDescription {
    return Intl.message(
      'Provide 3 structure cards',
      name: 'structurePackDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea Pack`
  String get ideaPack {
    return Intl.message(
      'Idea Pack',
      name: 'ideaPack',
      desc: '',
      args: [],
    );
  }

  /// `Idea Card`
  String get ideaCard {
    return Intl.message(
      'Idea Card',
      name: 'ideaCard',
      desc: '',
      args: [],
    );
  }

  /// `Provide 3 idea cards`
  String get ideaPackDescription {
    return Intl.message(
      'Provide 3 idea cards',
      name: 'ideaPackDescription',
      desc: '',
      args: [],
    );
  }

  /// `Nature Pack`
  String get naturePack {
    return Intl.message(
      'Nature Pack',
      name: 'naturePack',
      desc: '',
      args: [],
    );
  }

  /// `Nature Card`
  String get natureCard {
    return Intl.message(
      'Nature Card',
      name: 'natureCard',
      desc: '',
      args: [],
    );
  }

  /// `Provide 3 nature cards`
  String get naturePackDescription {
    return Intl.message(
      'Provide 3 nature cards',
      name: 'naturePackDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Iron Ingots`
  String get ideaIronIngots {
    return Intl.message(
      'Idea: Iron Ingots',
      name: 'ideaIronIngots',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n2 x Iron\n1 x Coal\n1 x Furnace`
  String get ideaIronIngotsDescription {
    return Intl.message(
      'The crafting is:\n2 x Iron\n1 x Coal\n1 x Furnace',
      name: 'ideaIronIngotsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Silicon`
  String get ideaSilicon {
    return Intl.message(
      'Idea: Silicon',
      name: 'ideaSilicon',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n6 x Coal\n1 x Furnace`
  String get ideaSiliconDescription {
    return Intl.message(
      'The crafting is:\n6 x Coal\n1 x Furnace',
      name: 'ideaSiliconDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Copper Line`
  String get ideaCopperLine {
    return Intl.message(
      'Idea: Copper Line',
      name: 'ideaCopperLine',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n2 x Cooper\n1 x Coal\n1 x Furnace\n1 x Crafting Table\n1 x Human`
  String get ideaCopperLineDescription {
    return Intl.message(
      'The crafting is:\n2 x Cooper\n1 x Coal\n1 x Furnace\n1 x Crafting Table\n1 x Human',
      name: 'ideaCopperLineDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Insulator`
  String get ideaInsulator {
    return Intl.message(
      'Idea: Insulator',
      name: 'ideaInsulator',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n2 x Plastic\n1 x Coal\n1 x Furnace\n1 x Crafting Table\n1 x Human`
  String get ideaInsulatorDescription {
    return Intl.message(
      'The crafting is:\n2 x Plastic\n1 x Coal\n1 x Furnace\n1 x Crafting Table\n1 x Human',
      name: 'ideaInsulatorDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Solar cells`
  String get ideaSolarcells {
    return Intl.message(
      'Idea: Solar cells',
      name: 'ideaSolarcells',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n4 x Silicon\n1 x Electronic Table\n1 x Human`
  String get ideaSolarcellsDescription {
    return Intl.message(
      'The crafting is:\n4 x Silicon\n1 x Electronic Table\n1 x Human',
      name: 'ideaSolarcellsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Structure`
  String get ideaStructure {
    return Intl.message(
      'Idea: Structure',
      name: 'ideaStructure',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n2 x wood\n2 x Iron\n1 x Crafting Table\n1 x Human`
  String get ideaStructureDescription {
    return Intl.message(
      'The crafting is:\n2 x wood\n2 x Iron\n1 x Crafting Table\n1 x Human',
      name: 'ideaStructureDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Cables`
  String get ideaCables {
    return Intl.message(
      'Idea: Cables',
      name: 'ideaCables',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n1 x Cooper line\n1 x Insulators\n1 x Crafting Table\n1 x Human`
  String get ideaCablesDescription {
    return Intl.message(
      'The crafting is:\n1 x Cooper line\n1 x Insulators\n1 x Crafting Table\n1 x Human',
      name: 'ideaCablesDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Stew`
  String get ideaStew {
    return Intl.message(
      'Idea: Stew',
      name: 'ideaStew',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n1 x Meat\n1 x Potato\n1 x Carrot\n1 x Water\n1 x (Funarce + Coal)/Campfire`
  String get ideaStewDescription {
    return Intl.message(
      'The crafting is:\n1 x Meat\n1 x Potato\n1 x Carrot\n1 x Water\n1 x (Funarce + Coal)/Campfire',
      name: 'ideaStewDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Fried Meat`
  String get ideaFriedMeat {
    return Intl.message(
      'Idea: Fried Meat',
      name: 'ideaFriedMeat',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n1 x Meat\n1 x (Funarce + Coal)/Campfire`
  String get ideaFriedMeatDescription {
    return Intl.message(
      'The crafting is:\n1 x Meat\n1 x (Funarce + Coal)/Campfire',
      name: 'ideaFriedMeatDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Flour`
  String get ideaFlour {
    return Intl.message(
      'Idea: Flour',
      name: 'ideaFlour',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n1 x Wheat\n1 x Mill\n1 x Human`
  String get ideaFlourDescription {
    return Intl.message(
      'The crafting is:\n1 x Wheat\n1 x Mill\n1 x Human',
      name: 'ideaFlourDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Bread`
  String get ideaBread {
    return Intl.message(
      'Idea: Bread',
      name: 'ideaBread',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n1 x Flour\n1 x Water\n1 x (Funarce + Coal)/Campfire`
  String get ideaBreadDescription {
    return Intl.message(
      'The crafting is:\n1 x Flour\n1 x Water\n1 x (Funarce + Coal)/Campfire',
      name: 'ideaBreadDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Cake`
  String get ideaCake {
    return Intl.message(
      'Idea: Cake',
      name: 'ideaCake',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n3 x Flour\n3 x Egg\n3 x Milk\n1 x (Funarce + Coal)/Campfire`
  String get ideaCakeDescription {
    return Intl.message(
      'The crafting is:\n3 x Flour\n3 x Egg\n3 x Milk\n1 x (Funarce + Coal)/Campfire',
      name: 'ideaCakeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Healthy Salad`
  String get ideaHealthySalad {
    return Intl.message(
      'Idea: Healthy Salad',
      name: 'ideaHealthySalad',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n1 x Carrot\n1 x Potato\n1 x Apple\n1 x Banana\n1 x Crafting Table\n1 x Human`
  String get ideaHealthySaladDescription {
    return Intl.message(
      'The crafting is:\n1 x Carrot\n1 x Potato\n1 x Apple\n1 x Banana\n1 x Crafting Table\n1 x Human',
      name: 'ideaHealthySaladDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Fruit Shake`
  String get ideaFruitShake {
    return Intl.message(
      'Idea: Fruit Shake',
      name: 'ideaFruitShake',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n1 x Apple\n1 x Banana\n1 x Milk\n1 x Crafting Table\n1 x Human`
  String get ideaFruitShakeDescription {
    return Intl.message(
      'The crafting is:\n1 x Apple\n1 x Banana\n1 x Milk\n1 x Crafting Table\n1 x Human',
      name: 'ideaFruitShakeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Potato Omelet`
  String get ideaPotatoOmelet {
    return Intl.message(
      'Idea: Potato Omelet',
      name: 'ideaPotatoOmelet',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n2 x Potato\n3 x Egg\n1 x Flour\n1 x Milk\n1 x (Funarce + Coal)/Campfire`
  String get ideaPotatoOmeletDescription {
    return Intl.message(
      'The crafting is:\n2 x Potato\n3 x Egg\n1 x Flour\n1 x Milk\n1 x (Funarce + Coal)/Campfire',
      name: 'ideaPotatoOmeletDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Apple Pie`
  String get ideaApplePie {
    return Intl.message(
      'Idea: Apple Pie',
      name: 'ideaApplePie',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n2 x Apple\n2 x Flour\n2 x Egg\n1 x Milk\n1 x (Funarce + Coal)/Campfire`
  String get ideaApplePieDescription {
    return Intl.message(
      'The crafting is:\n2 x Apple\n2 x Flour\n2 x Egg\n1 x Milk\n1 x (Funarce + Coal)/Campfire',
      name: 'ideaApplePieDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Farm Feast`
  String get ideaFarmFeast {
    return Intl.message(
      'Idea: Farm Feast',
      name: 'ideaFarmFeast',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n1 x Stew\n1 x Healthy Salad\n1 x Potato Omelet\n1 x Apple Pie\n1 x Fruit Shake\n1 x Cake\n1 x (Funarce + Coal)/Campfire`
  String get ideaFarmFeastDescription {
    return Intl.message(
      'The crafting is:\n1 x Stew\n1 x Healthy Salad\n1 x Potato Omelet\n1 x Apple Pie\n1 x Fruit Shake\n1 x Cake\n1 x (Funarce + Coal)/Campfire',
      name: 'ideaFarmFeastDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Baul`
  String get ideaBaul {
    return Intl.message(
      'Idea: Baul',
      name: 'ideaBaul',
      desc: '',
      args: [],
    );
  }

  /// `Provide 5 more card slot.\nThe crafting is:\n2 x Structures\n2 x Planks, \n1 x Crafting Table\n1 x Human`
  String get ideaBaulDescription {
    return Intl.message(
      'Provide 5 more card slot.\nThe crafting is:\n2 x Structures\n2 x Planks, \n1 x Crafting Table\n1 x Human',
      name: 'ideaBaulDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Warehouse`
  String get ideaWarehouse {
    return Intl.message(
      'Idea: Warehouse',
      name: 'ideaWarehouse',
      desc: '',
      args: [],
    );
  }

  /// `Provide 15 more card slot.\nThe crafting is:\n4 x Structures\n4 x Planks\n1 x Crafting Table\n1 x Human`
  String get ideaWarehouseDescription {
    return Intl.message(
      'Provide 15 more card slot.\nThe crafting is:\n4 x Structures\n4 x Planks\n1 x Crafting Table\n1 x Human',
      name: 'ideaWarehouseDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Furnace`
  String get ideaFurnace {
    return Intl.message(
      'Idea: Furnace',
      name: 'ideaFurnace',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n4 x Rock\n2 x Structure\n1 x Crafting Table\n1 x Human`
  String get ideaFurnaceDescription {
    return Intl.message(
      'The crafting is:\n4 x Rock\n2 x Structure\n1 x Crafting Table\n1 x Human',
      name: 'ideaFurnaceDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Crafting Table`
  String get ideaCraftingTable {
    return Intl.message(
      'Idea: Crafting Table',
      name: 'ideaCraftingTable',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n4 x Wood\n1 x Human`
  String get ideaCraftingTableDescription {
    return Intl.message(
      'The crafting is:\n4 x Wood\n1 x Human',
      name: 'ideaCraftingTableDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Sawmill`
  String get ideaSawmill {
    return Intl.message(
      'Idea: Sawmill',
      name: 'ideaSawmill',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n4 x Tree\n3 x Iron\n2 x Structure\n1 x Crafting Table\n1 x Human`
  String get ideaSawmillDescription {
    return Intl.message(
      'The crafting is:\n4 x Tree\n3 x Iron\n2 x Structure\n1 x Crafting Table\n1 x Human',
      name: 'ideaSawmillDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Electronic table`
  String get ideaElectronicTable {
    return Intl.message(
      'Idea: Electronic table',
      name: 'ideaElectronicTable',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n3 x Cable\n2 x Structure\n2 x Insulator\n2 x Crafting table\n1 x Human`
  String get ideaElectronicTableDescription {
    return Intl.message(
      'The crafting is:\n3 x Cable\n2 x Structure\n2 x Insulator\n2 x Crafting table\n1 x Human',
      name: 'ideaElectronicTableDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Solar panel`
  String get ideaSolarpanel {
    return Intl.message(
      'Idea: Solar panel',
      name: 'ideaSolarpanel',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n4 x Structure\n4 x Cables\n2 x Solar Cell\n2 x Insulator\n1 x Electronic Table\n1 x Human`
  String get ideaSolarpanelDescription {
    return Intl.message(
      'The crafting is:\n4 x Structure\n4 x Cables\n2 x Solar Cell\n2 x Insulator\n1 x Electronic Table\n1 x Human',
      name: 'ideaSolarpanelDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Farm`
  String get ideaFarm {
    return Intl.message(
      'Idea: Farm',
      name: 'ideaFarm',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n4 x Structure\n4 x Dirt\n4 x Water\n4 x Planks\n4 x Fertilizer\n1 x Crafting Table\n1 x Human`
  String get ideaFarmDescription {
    return Intl.message(
      'The crafting is:\n4 x Structure\n4 x Dirt\n4 x Water\n4 x Planks\n4 x Fertilizer\n1 x Crafting Table\n1 x Human',
      name: 'ideaFarmDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Orchard`
  String get ideaOrchard {
    return Intl.message(
      'Idea: Orchard',
      name: 'ideaOrchard',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n4 x Dirt\n2 x Water\n2 x Wood\n2 x Fertilizer\n1 x Crafting Table\n1 x Human`
  String get ideaOrchardDescription {
    return Intl.message(
      'The crafting is:\n4 x Dirt\n2 x Water\n2 x Wood\n2 x Fertilizer\n1 x Crafting Table\n1 x Human',
      name: 'ideaOrchardDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Mill`
  String get ideaMill {
    return Intl.message(
      'Idea: Mill',
      name: 'ideaMill',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n2 x Rock\n2 x Wood\n1 x Structure\n1 x Iron Ingot\n1 x Crafting Table\n1 x Human`
  String get ideaMillDescripcion {
    return Intl.message(
      'The crafting is:\n2 x Rock\n2 x Wood\n1 x Structure\n1 x Iron Ingot\n1 x Crafting Table\n1 x Human',
      name: 'ideaMillDescripcion',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Greenhouse`
  String get ideaGreenhouse {
    return Intl.message(
      'Idea: Greenhouse',
      name: 'ideaGreenhouse',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n6 x Glass\n4 x Structure\n2 x Tree\n1 x Crafting Table\n1 x Human`
  String get ideaGreenhouseDescripcion {
    return Intl.message(
      'The crafting is:\n6 x Glass\n4 x Structure\n2 x Tree\n1 x Crafting Table\n1 x Human',
      name: 'ideaGreenhouseDescripcion',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Wind turbine`
  String get ideaWindturbine {
    return Intl.message(
      'Idea: Wind turbine',
      name: 'ideaWindturbine',
      desc: '',
      args: [],
    );
  }

  /// `Provide 5 additional energy.\nThe crafting is:\n4 x Planks\n2 x Structure\n2 x Cables\n1 x Crafting Table\n1 x Human`
  String get ideaWindturbineDescription {
    return Intl.message(
      'Provide 5 additional energy.\nThe crafting is:\n4 x Planks\n2 x Structure\n2 x Cables\n1 x Crafting Table\n1 x Human',
      name: 'ideaWindturbineDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Recycler`
  String get ideaRecycler {
    return Intl.message(
      'Idea: Recycler',
      name: 'ideaRecycler',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n8 x Planks\n4 x Structure\n1 x Crafting Table\n1 x Human`
  String get ideaRecyclerDescription {
    return Intl.message(
      'The crafting is:\n8 x Planks\n4 x Structure\n1 x Crafting Table\n1 x Human',
      name: 'ideaRecyclerDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Composter`
  String get ideaComposter {
    return Intl.message(
      'Idea: Composter',
      name: 'ideaComposter',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n2 x Structure\n2 x Planks\n4 x Plastic\n1 x Poop\n1 x Crafting Table\n1 x Human`
  String get ideaComposterDescripcion {
    return Intl.message(
      'The crafting is:\n2 x Structure\n2 x Planks\n4 x Plastic\n1 x Poop\n1 x Crafting Table\n1 x Human',
      name: 'ideaComposterDescripcion',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Campfire`
  String get ideaCampfire {
    return Intl.message(
      'Idea: Campfire',
      name: 'ideaCampfire',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n4 x Wood\n4 x Rock\n1 x Human`
  String get ideaCampfireDescription {
    return Intl.message(
      'The crafting is:\n4 x Wood\n4 x Rock\n1 x Human',
      name: 'ideaCampfireDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Apple Tree`
  String get ideaAppleTree {
    return Intl.message(
      'Idea: Apple Tree',
      name: 'ideaAppleTree',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n1 x Tree Seed\n1 x Apple\n1 x Water\n1 x Farm\n1 x Human`
  String get ideaAppleTreeDescription {
    return Intl.message(
      'The crafting is:\n1 x Tree Seed\n1 x Apple\n1 x Water\n1 x Farm\n1 x Human',
      name: 'ideaAppleTreeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Banana Tree`
  String get ideaBananaTree {
    return Intl.message(
      'Idea: Banana Tree',
      name: 'ideaBananaTree',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n1 x Tree Seed\n1 x Banana\n1 x Water\n1 x Farm\n1 x Human`
  String get ideaBananaTreeDescription {
    return Intl.message(
      'The crafting is:\n1 x Tree Seed\n1 x Banana\n1 x Water\n1 x Farm\n1 x Human',
      name: 'ideaBananaTreeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Milk`
  String get ideaMilk {
    return Intl.message(
      'Idea: Milk',
      name: 'ideaMilk',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n1 x Cow\n1 x Human`
  String get ideaMilkDescription {
    return Intl.message(
      'The crafting is:\n1 x Cow\n1 x Human',
      name: 'ideaMilkDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Fertilizer`
  String get ideaFertilizer {
    return Intl.message(
      'Idea: Fertilizer',
      name: 'ideaFertilizer',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n1 x Poop\n1 x Composter\n1 x Water\n1 x Human`
  String get ideaFertilizerDescription {
    return Intl.message(
      'The crafting is:\n1 x Poop\n1 x Composter\n1 x Water\n1 x Human',
      name: 'ideaFertilizerDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Wood`
  String get ideaWood {
    return Intl.message(
      'Idea: Wood',
      name: 'ideaWood',
      desc: '',
      args: [],
    );
  }

  /// `The crafting is:\n1 x Tree\n1 x Human`
  String get ideaWoodDescription {
    return Intl.message(
      'The crafting is:\n1 x Tree\n1 x Human',
      name: 'ideaWoodDescription',
      desc: '',
      args: [],
    );
  }

  /// `Fertilizer`
  String get fertilizer {
    return Intl.message(
      'Fertilizer',
      name: 'fertilizer',
      desc: '',
      args: [],
    );
  }

  /// `An enriched compound that boosts the growth of your crops. This fertilizer ensures that your plants are always happy and healthy.`
  String get fertilizerDescription {
    return Intl.message(
      'An enriched compound that boosts the growth of your crops. This fertilizer ensures that your plants are always happy and healthy.',
      name: 'fertilizerDescription',
      desc: '',
      args: [],
    );
  }

  /// `Tree Seed`
  String get treeSeed {
    return Intl.message(
      'Tree Seed',
      name: 'treeSeed',
      desc: '',
      args: [],
    );
  }

  /// `A small treasure of nature that carries with it the promise of a green and lush future. Plant this seed with love and care, and you will see how a majestic tree will grow and provide shade and oxygen.`
  String get treeSeedDescription {
    return Intl.message(
      'A small treasure of nature that carries with it the promise of a green and lush future. Plant this seed with love and care, and you will see how a majestic tree will grow and provide shade and oxygen.',
      name: 'treeSeedDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Well`
  String get ideaWell {
    return Intl.message(
      'Idea: Well',
      name: 'ideaWell',
      desc: '',
      args: [],
    );
  }

  /// `Well`
  String get well {
    return Intl.message(
      'Well',
      name: 'well',
      desc: '',
      args: [],
    );
  }

  /// `A reliable source of drinking water for your community. This well guarantees a constant supply of vital liquid to keep everyone hydrated.`
  String get wellDescription {
    return Intl.message(
      'A reliable source of drinking water for your community. This well guarantees a constant supply of vital liquid to keep everyone hydrated.',
      name: 'wellDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Planks`
  String get ideaPlanks {
    return Intl.message(
      'Idea: Planks',
      name: 'ideaPlanks',
      desc: '',
      args: [],
    );
  }

  /// `Dev team`
  String get devTeam {
    return Intl.message(
      'Dev team',
      name: 'devTeam',
      desc: '',
      args: [],
    );
  }

  /// `Does anyone actually read the descriptions? Are you seriously reading this? Don't you have anything better to do? Well, I guess that makes two of us. Youve unlocked the Development Team card. Someone somewhere probably thought it was a good idea. Are you excited? Probably not, but thanks for being here anyway. Developers: …`
  String get devTeamDescription {
    return Intl.message(
      'Does anyone actually read the descriptions? Are you seriously reading this? Don`t you have anything better to do? Well, I guess that makes two of us. Youve unlocked the Development Team card. Someone somewhere probably thought it was a good idea. Are you excited? Probably not, but thanks for being here anyway. Developers: …',
      name: 'devTeamDescription',
      desc: '',
      args: [],
    );
  }

  /// `If you are interested in discovering how to create this idea yourself, we invite you to review the recipes menu at the top.`
  String get ideaDescriptionGeneral {
    return Intl.message(
      'If you are interested in discovering how to create this idea yourself, we invite you to review the recipes menu at the top.',
      name: 'ideaDescriptionGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Hey! How are you? I am the master of irons and the king of controls. When I'm not at the gym defying gravity, I'm at home conquering virtual worlds. There is no muscle you can't tone and no level you can't surpass! Who else combines sweat with the A button?`
  String get descriptionSanty {
    return Intl.message(
      'Hey! How are you? I am the master of irons and the king of controls. When I\'m not at the gym defying gravity, I\'m at home conquering virtual worlds. There is no muscle you can\'t tone and no level you can\'t surpass! Who else combines sweat with the A button?',
      name: 'descriptionSanty',
      desc: '',
      args: [],
    );
  }

  /// `Hi! I'm the gym champion and the most amazing programmer in the universe, according to my mom. When I'm not lifting weights, I'm lifting code and breaking records (at least in my own world). Who else can do push-ups while solving a problem? bug? I'll wait for you at the gym... or at the source code.?`
  String get descriptionBrian {
    return Intl.message(
      'Hi! I\'m the gym champion and the most amazing programmer in the universe, according to my mom. When I\'m not lifting weights, I\'m lifting code and breaking records (at least in my own world). Who else can do push-ups while solving a problem? bug? I\'ll wait for you at the gym... or at the source code.?',
      name: 'descriptionBrian',
      desc: '',
      args: [],
    );
  }

  /// `Hello! I am the programming ninja and the keyboard globetrotter. When I'm not mastering code, I'm exploring the world with my backpack and laptop in tow, ready to code anywhere on the planet. If you're looking for the guy who can hack a system and set up a tent in less than an hour, I'm here!`
  String get descriptionCamilo {
    return Intl.message(
      'Hello! I am the programming ninja and the keyboard globetrotter. When I\'m not mastering code, I\'m exploring the world with my backpack and laptop in tow, ready to code anywhere on the planet. If you\'re looking for the guy who can hack a system and set up a tent in less than an hour, I\'m here!',
      name: 'descriptionCamilo',
      desc: '',
      args: [],
    );
  }

  /// `Hi how are things! Here is the 'Thousand Steps', the prodigy that makes everyone look like they are moving in slow motion. In the office, I'm like the human GPS: always pointing in the right direction. But outside of here, they call me 'The Philosopher of Life'. Social life? Adventure? Do not even dream about it! I prefer nights immersed in my own thoughts, unraveling the mysteries of the universe from the comfort of my couch. So if you need a guide at work, I'm here, just a few steps away!`
  String get descriptionYhonier {
    return Intl.message(
      'Hi how are things! Here is the \'Thousand Steps\', the prodigy that makes everyone look like they are moving in slow motion. In the office, I\'m like the human GPS: always pointing in the right direction. But outside of here, they call me \'The Philosopher of Life\'. Social life? Adventure? Do not even dream about it! I prefer nights immersed in my own thoughts, unraveling the mysteries of the universe from the comfort of my couch. So if you need a guide at work, I\'m here, just a few steps away!',
      name: 'descriptionYhonier',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<L10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<L10n> load(Locale locale) => L10n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
