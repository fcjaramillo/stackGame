import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../const.dart';

class TimeDay extends StatefulWidget {
  const TimeDay({
    required this.currentTime,
    required this.onTapFast,
    required this.onTapPause,
    required this.onTapSound,
    super.key,
  });

  final ValueNotifier<double> currentTime;
  final VoidCallback onTapPause;
  final VoidCallback onTapFast;
  final VoidCallback onTapSound;

  @override
  State<TimeDay> createState() => _TimeDayState();
}

class _TimeDayState extends State<TimeDay> {
  bool isPause = false;
  bool isFast = false;
  bool isSound = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: isPause ? FontAwesomeIcons.pause : FontAwesomeIcons.play,
          onTap: () {
            widget.onTapPause();
            setState(() {
              isPause = !isPause;
            });
          },
        ),
        const SizedBox(width: 8),
        CircularIcon(
          icon: isFast
              ? FontAwesomeIcons.backwardFast
              : FontAwesomeIcons.forwardFast,
          onTap: () {
            widget.onTapFast();
            setState(() {
              isFast = !isFast;
            });
          },
        ),
        const SizedBox(width: 8),
        ValueListenableBuilder<double>(
          valueListenable: widget.currentTime,
          builder: (context, value, child) {
            Color colorBar = value == 0
                ? kColorBluePrincipal
                : value < kTimeDayComplete * 15 / 100
                    ? Colors.blue.shade300
                    : value <= kTimeDayComplete * 60 / 100
                        ? Colors.yellow.shade600
                        : value <= kTimeDayComplete * 80 / 100
                            ? Colors.orange
                            : kColorBluePrincipal;

            return DecoratedBox(
              decoration: BoxDecoration(
                color: colorBar,
                border: Border.all(
                  color: kColorBluePrincipal,
                  width: 5,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: LinearProgressIndicator(
                    value: value / kTimeDayComplete,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: colorBar,
                    minHeight: 10,
                  ),
                ),
              ),
            );
          },
        ),
        const SizedBox(width: 8),
        CircularIcon(
          icon: isSound
              ? FontAwesomeIcons.volumeHigh
              : FontAwesomeIcons.volumeOff,
          onTap: () {
            widget.onTapSound();
            setState(() {
              isSound = !isSound;
            });
          },
        ),
      ],
    );
  }
}

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    required this.icon,
    required this.onTap,
    super.key,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: kColorBackground,
          border: Border.all(
            color: kColorBluePrincipal,
            width: 4,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 6,
          ),
          child: FaIcon(
            icon,
            color: kColorBluePrincipal,
            size: 20,
          ),
        ),
      ),
    );
  }
}
