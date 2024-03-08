import 'dart:ui';

import 'package:stack/data/data.dart';

import 'models/models.dart';

const double kCardWidth = 100.0;
const double kCardHeight = 115.0;
const double kBarTimerWidth = 300.0;
const double kBarTimerHeight = 24;
const double kTimeDayComplete = 90;
const Color kColorBluePrincipal = Color(0xff184e77);
const Color kColorBackground = Color(0xffa9d6e5);

const double kMinCameraX = -60;
const double kMinCameraY = -50;
const double kMaxCameraX = 190;
const double kMaxCameraY = 440;
const double kVegetationSide = 115;
const double kNewCardAnimationDuration = 1.5;
const double kGrassSide = 790;

const double kMaxValue = 100;
const double kOxygenInitial = 20;
const double kCarbonFootprintInitial = 50;
const int kNumberCardsInitial = 20;
const int kHealtInitial = 100;

const int kNeededFood = 3;

//audios
const String kSoundBolero = 'bolero.mp3';
const String kSoundRondo = 'rondo.mp3';
const String kSoundConcerto = 'concerto.mp3';
const String kSoundFlowers = 'flowers.mp3';
const List<String> kSoundList = [
  kSoundConcerto,
];

List<CardModel> kInitialCards = [
  kCoalPlant,
  kCCBurgers,
  kEmployment,
  kTree,
  kCraftingTableIdea,
  kHuman,
];
