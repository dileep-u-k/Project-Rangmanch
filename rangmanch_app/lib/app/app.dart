import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router.dart';
import 'theme.dart';

class RangmanchApp extends ConsumerWidget {
  const RangmanchApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'RANGMANCH',
      debugShowCheckedModeBanner: false,
      theme: buildRangmanchTheme(),
      routerConfig: router,
    );
  }
}