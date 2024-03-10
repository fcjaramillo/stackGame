library com.stack.providers;

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateProvider<Locale> localeProvider = StateProvider<Locale>(
  (StateProviderRef<Locale> ref) => const Locale('es'),
);

final countingStreamProvider = StreamProvider<int>((ref) {
  return Stream.periodic(const Duration(seconds: 5), (inc) => inc);
});
