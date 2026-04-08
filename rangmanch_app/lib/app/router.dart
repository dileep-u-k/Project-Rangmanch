import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/home/home_screen.dart';
import '../features/onboarding/onboarding_screen.dart';
import 'constants.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.onboarding,
    routes: [
      GoRoute(
        path: AppRoutes.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.episodeSetup,
        builder: (context, state) =>
            const _PlaceholderScreen(title: 'Episode Setup'),
      ),
      GoRoute(
        path: AppRoutes.episodeExperience,
        builder: (context, state) =>
            const _PlaceholderScreen(title: 'Episode Experience'),
      ),
      GoRoute(
        path: AppRoutes.episodeOutcome,
        builder: (context, state) =>
            const _PlaceholderScreen(title: 'Episode Outcome'),
      ),
      GoRoute(
        path: AppRoutes.squadSetup,
        builder: (context, state) =>
            const _PlaceholderScreen(title: 'Squad Setup'),
      ),
      GoRoute(
        path: AppRoutes.squadResult,
        builder: (context, state) =>
            const _PlaceholderScreen(title: 'Squad Result'),
      ),
      GoRoute(
        path: AppRoutes.artifact,
        builder: (context, state) =>
            const _PlaceholderScreen(title: 'Artifact / Share'),
      ),
      GoRoute(
        path: AppRoutes.nextAct,
        builder: (context, state) =>
            const _PlaceholderScreen(title: 'Next Act'),
      ),
      GoRoute(
        path: AppRoutes.archive,
        builder: (context, state) =>
            const _PlaceholderScreen(title: 'Archive'),
      ),
    ],
  );
});

class _PlaceholderScreen extends StatelessWidget {
  final String title;

  const _PlaceholderScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}