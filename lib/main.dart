import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stack/firebase_options.dart';
import 'package:stack/widget/game_app.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const GameApp());
}
