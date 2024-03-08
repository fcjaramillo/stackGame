import 'package:flutter/material.dart';
import 'package:stack/l10n/generated/l10n.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    required this.onChanged,
    super.key,
  });

  final void Function(Locale?) onChanged;

  static Route<void> goTo(void Function(Locale?) onChanged) =>
      MaterialPageRoute(
        builder: (_) => MenuScreen(
          onChanged: onChanged,
        ),
        settings: const RouteSettings(name: '/menu'),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 700,
                minWidth: 500,
                maxHeight: 400,
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 74, 207, 134),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'GreenStack',
                      style: TextStyle(fontSize: 35),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/game');
                      },
                      child: Text('New game'),
                    ),
                    const SizedBox(height: 30),
                    DropdownButton<Locale>(
                      onChanged: onChanged,
                      items: L10n.delegate.supportedLocales
                          .map(
                            (e) => DropdownMenuItem<Locale>(
                              value: e,
                              child: Text(
                                e.languageCode,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
