import 'package:flutter/material.dart';

class ActionButtonRow extends StatelessWidget {
  final List<Widget> actions;

  const ActionButtonRow({
    super.key,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: actions,
    );
  }
}