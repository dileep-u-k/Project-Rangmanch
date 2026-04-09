import 'package:flutter/material.dart';

import '../../core/utils/spacing.dart';

class AppScaffold extends StatelessWidget {
  final String? title;
  final Widget child;
  final List<Widget>? actions;
  final bool scrollable;

  const AppScaffold({
    super.key,
    this.title,
    required this.child,
    this.actions,
    this.scrollable = true,
  });

  @override
  Widget build(BuildContext context) {
    final body = scrollable
        ? SafeArea(
            child: SingleChildScrollView(
              padding: AppSpacing.pagePadding,
              child: child,
            ),
          )
        : SafeArea(
            child: Padding(
              padding: AppSpacing.pagePadding,
              child: child,
            ),
          );

    return Scaffold(
      appBar: title == null
          ? null
          : AppBar(
              title: Text(title!),
              actions: actions,
            ),
      body: body,
    );
  }
}