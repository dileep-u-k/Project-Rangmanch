import 'package:flutter/material.dart';

class DemoNoteCard extends StatelessWidget {
  final String label;
  final String body;

  const DemoNoteCard({
    super.key,
    required this.label,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: theme.colorScheme.primary.withAlpha(24),
        border: Border.all(
          color: theme.colorScheme.primary.withAlpha(55),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label.toUpperCase(),
            style: theme.textTheme.labelLarge?.copyWith(
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            body,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}