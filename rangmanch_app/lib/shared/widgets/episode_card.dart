import 'package:flutter/material.dart';

class EpisodeCard extends StatelessWidget {
  final String eyebrow;
  final String title;
  final String body;

  const EpisodeCard({
    super.key,
    required this.eyebrow,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: theme.colorScheme.surface,
        border: Border.all(color: Colors.white.withAlpha(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            eyebrow.toUpperCase(),
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.secondary,
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(height: 10),
          Text(title, style: theme.textTheme.headlineMedium),
          const SizedBox(height: 10),
          Text(body, style: theme.textTheme.bodyLarge),
        ],
      ),
    );
  }
}