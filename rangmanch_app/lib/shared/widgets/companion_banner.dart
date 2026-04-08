import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CompanionBanner extends StatelessWidget {
  final String eyebrow;
  final String headline;
  final String subline;

  const CompanionBanner({
    super.key,
    required this.eyebrow,
    required this.headline,
    required this.subline,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF201A46),
            Color(0xFF2E205F),
            Color(0xFF4D2A78),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            eyebrow.toUpperCase(),
            style: theme.textTheme.labelLarge?.copyWith(
              color: Colors.white70,
              letterSpacing: 1.1,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            headline,
            style: theme.textTheme.headlineMedium,
          ),
          const SizedBox(height: 10),
          Text(
            subline,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: Colors.white.withAlpha(220),
            ),
          ),
        ],
      ),
    )
        .animate()
        .fadeIn(duration: 500.ms)
        .slideY(begin: 0.06, end: 0);
  }
}