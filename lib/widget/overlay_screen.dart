import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OverlayScreen extends StatelessWidget {
  const OverlayScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.action,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final String action;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(151, 101, 151, 81),
          ),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
            maxHeight: MediaQuery.of(context).size.height * 0.8,
          ),
          alignment: const Alignment(0, -0.15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: AutoSizeText(
                  title.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineLarge,
                  minFontSize: 6,
                  maxLines: 1,
                ).animate().slideY(duration: 750.ms, begin: -3, end: 0),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Center(
                  child: AutoSizeText(
                    subtitle,
                    minFontSize: 6,
                    maxLines: 4,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ).animate().slideX(duration: 750.ms, begin: 10, end: 0),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: AutoSizeText(
                  action,
                  style: Theme.of(context).textTheme.headlineSmall,
                  minFontSize: 6,
                  maxLines: 1,
                )
                    .animate(onPlay: (controller) => controller.repeat())
                    .fadeIn(duration: 1.seconds)
                    .then()
                    .fadeOut(duration: 1.seconds),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
