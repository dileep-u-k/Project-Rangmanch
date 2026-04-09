import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final String label;
  final String flavor;
  final VoidCallback onTap;

  const ChoiceButton({
    super.key,
    required this.label,
    required this.flavor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(22),
      child: Ink(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: theme.colorScheme.surface,
          border: Border.all(color: Colors.white.withAlpha(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              flavor.toUpperCase(),
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.secondary,
                letterSpacing: 0.8,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: theme.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}