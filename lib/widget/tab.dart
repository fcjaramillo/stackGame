import 'package:flutter/material.dart';
import 'package:stack/const.dart';

class TabIndicator extends StatefulWidget {
  const TabIndicator({super.key});

  @override
  State<TabIndicator> createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator> {
  int index = 0;

  final List<String> titles = [
    'Quest',
    'Recipes',
    'Achivements',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          height: 40,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              border: Border.all(
                color: kColorBluePrincipal,
                width: 5,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                FcTitleTab(
                  title: 'Quest',
                  onTap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                ),
                const VerticalDivider(
                  color: kColorBluePrincipal,
                  thickness: 5,
                ),
                FcTitleTab(
                  title: 'Recipes',
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                ),
                const VerticalDivider(color: kColorBluePrincipal, thickness: 5),
                FcTitleTab(
                  title: 'Achivements',
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: kColorBluePrincipal,
                    width: 5,
                  ),
                  left: BorderSide(
                    color: kColorBluePrincipal,
                    width: 5,
                  ),
                  right: BorderSide(
                    color: kColorBluePrincipal,
                    width: 5,
                  ),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: IndexedStack(
                    index: index,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          for (int i = 0; i <= 100; i++) Text('1'),
                        ],
                      ),
                      Text('2'),
                      Text('3'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FcTitleTab extends StatelessWidget {
  const FcTitleTab({
    required this.title,
    required this.onTap,
    super.key,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 12,
          ),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
