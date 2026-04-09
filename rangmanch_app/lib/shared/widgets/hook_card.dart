import 'package:flutter/material.dart';

class HookCard extends StatelessWidget {
  final String headline;
  final String hookType;
  final String hookLine;
  final String returnReason;

  const HookCard({
    super.key,
    required this.headline,
    required this.hookType,
    required this.hookLine,
    required this.returnReason,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: theme.colorScheme.surface,
        border: Border.all(color: Colors.white.withAlpha(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hookType.toUpperCase(),
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.secondary,
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            headline,
            style: theme.textTheme.headlineMedium,
          ),
          const SizedBox(height: 10),
          Text(
            hookLine,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 14),
          Text(
            returnReason,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}