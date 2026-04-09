import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/constants.dart';
import '../../core/utils/spacing.dart';
import '../../shared/widgets/action_button_row.dart';
import '../../shared/widgets/app_scaffold.dart';
import '../../shared/widgets/demo_note_card.dart';
import '../../shared/widgets/episode_card.dart';
import '../../shared/widgets/loading_stage.dart';
import 'episode_controller.dart';

class EpisodeOutcomeScreen extends ConsumerWidget {
  const EpisodeOutcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final outcomeAsync = ref.watch(episodeOutcomeProvider);

    return AppScaffold(
      title: 'Episode Outcome',
      scrollable: false,
      child: outcomeAsync.when(
        data: (payload) {
          final outcome = payload.data;

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (payload.usedFallback) ...[
                  const DemoNoteCard(
                    label: 'Fallback Outcome',
                    body:
                        'The product used a safe recovery path so the act still lands cleanly.',
                  ),
                  const SizedBox(height: AppSpacing.lg),
                ],
                EpisodeCard(
                  eyebrow: outcome.resultTone,
                  title: outcome.headline,
                  body: outcome.summary,
                ),
                const SizedBox(height: AppSpacing.lg),
                EpisodeCard(
                  eyebrow: 'Companion Commentary',
                  title: 'Stage note',
                  body: outcome.commentary,
                ),
                const SizedBox(height: AppSpacing.xxl),
                ActionButtonRow(
                  actions: [
                    FilledButton(
                      onPressed: () => context.go(AppRoutes.artifact),
                      child: const Text('View Artifact'),
                    ),
                    OutlinedButton(
                      onPressed: () => context.go(AppRoutes.nextAct),
                      child: const Text('Open Next Act'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        loading: () => const LoadingStage(
          title: 'Landing the payoff',
          subtitle:
              'The companion is finalizing the outcome of your chosen path.',
        ),
        error: (error, stackTrace) => const LoadingStage(
          title: 'Recovering the act',
          subtitle: 'A lighter fallback outcome is being staged.',
        ),
      ),
    );
  }
}