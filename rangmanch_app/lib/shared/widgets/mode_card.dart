import 'package:flutter/material.dart';

class ModeCard extends StatelessWidget {
  final String title;
  final String description;
  final String tag;
  final VoidCallback onTap;
  final bool primary;

  const ModeCard({
    super.key,
    required this.title,
    required this.description,
    required this.tag,
    required this.onTap,
    this.primary = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: primary
              ? theme.colorScheme.primary.withAlpha(38)
              : theme.colorScheme.surface,
          border: Border.all(
            color: primary
                ? theme.colorScheme.primary.withAlpha(90)
                : Colors.white.withAlpha(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(18),
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  tag,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              const SizedBox(height: 14),
              Text(
                title,
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}