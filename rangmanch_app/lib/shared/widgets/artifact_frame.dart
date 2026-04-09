import 'package:flutter/material.dart';

class ArtifactFrame extends StatelessWidget {
  final String eyebrow;
  final String headline;
  final String subheadline;
  final String resultCore;
  final String caption;

  const ArtifactFrame({
    super.key,
    required this.eyebrow,
    required this.headline,
    required this.subheadline,
    required this.resultCore,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF1E1744),
            Color(0xFF3D2569),
            Color(0xFF6B3FA6),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(45),
            blurRadius: 24,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            eyebrow.toUpperCase(),
            style: theme.textTheme.labelLarge?.copyWith(
              color: Colors.white70,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            headline,
            style: theme.textTheme.headlineLarge,
          ),
          const SizedBox(height: 10),
          Text(
            subheadline,
            style: theme.textTheme.titleLarge?.copyWith(
              color: Colors.white.withAlpha(220),
            ),
          ),
          const SizedBox(height: 24),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withAlpha(18),
            ),
            child: Text(
              resultCore,
              style: theme.textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            caption,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: Colors.white.withAlpha(220),
            ),
          ),
        ],
      ),
    );
  }
}