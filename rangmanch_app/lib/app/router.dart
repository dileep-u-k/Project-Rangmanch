import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/archive/archive_screen.dart';
import '../features/artifact/artifact_screen.dart';
import '../features/continuity/next_act_screen.dart';
import '../features/episode/episode_experience_screen.dart';
import '../features/episode/episode_outcome_screen.dart';
import '../features/episode/episode_setup_screen.dart';
import '../features/home/home_screen.dart';
import '../features/onboarding/onboarding_screen.dart';
import '../features/squad/squad_result_screen.dart';
import '../features/squad/squad_setup_screen.dart';
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
        builder: (context, state) => const EpisodeSetupScreen(),
      ),
      GoRoute(
        path: AppRoutes.episodeExperience,
        builder: (context, state) => const EpisodeExperienceScreen(),
      ),
      GoRoute(
        path: AppRoutes.episodeOutcome,
        builder: (context, state) => const EpisodeOutcomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.squadSetup,
        builder: (context, state) => const SquadSetupScreen(),
      ),
      GoRoute(
        path: AppRoutes.squadResult,
        builder: (context, state) => const SquadResultScreen(),
      ),
      GoRoute(
        path: AppRoutes.artifact,
        builder: (context, state) => const ArtifactScreen(),
      ),
      GoRoute(
        path: AppRoutes.nextAct,
        builder: (context, state) => const NextActScreen(),
      ),
      GoRoute(
        path: AppRoutes.archive,
        builder: (context, state) => const ArchiveScreen(),
      ),
    ],
  );
});