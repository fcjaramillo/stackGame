import 'package:flutter/material.dart';
import 'package:stack/l10n/generated/l10n.dart';

class MenuScreen extends StatefulWidget {
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
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  Locale locale = L10n.delegate.supportedLocales.first;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/vegetation/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
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
                    color: const Color.fromARGB(151, 101, 151, 81),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'GreenStack',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.blue.shade900,
                        ),
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/game');
                        },
                        child: Text(
                          L10n.of(context).newGame,
                          style: TextStyle(
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      DecoratedBox(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(35)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<Locale>(
                            isDense: true,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 27,
                              vertical: 4.5,
                            ),
                            onChanged: (Locale? loc) {
                              setState(() {
                                locale = loc ?? locale;
                              });
                              widget.onChanged(loc);
                            },
                            value: locale,
                            items: L10n.delegate.supportedLocales
                                .map(
                                  (e) => DropdownMenuItem<Locale>(
                                    value: e,
                                    child: Text(
                                      L10n.of(context).language(e.languageCode),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
