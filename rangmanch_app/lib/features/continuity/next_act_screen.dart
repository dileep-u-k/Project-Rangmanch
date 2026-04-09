import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/constants.dart';
import '../../core/utils/spacing.dart';
import '../../shared/widgets/action_button_row.dart';
import '../../shared/widgets/app_scaffold.dart';
import '../../shared/widgets/demo_note_card.dart';
import '../../shared/widgets/empty_state_card.dart';
import '../../shared/widgets/hook_card.dart';
import '../../shared/widgets/loading_stage.dart';
import '../../shared/widgets/section_header.dart';
import 'continuity_controller.dart';

class NextActScreen extends ConsumerWidget {
  const NextActScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hookAsync = ref.watch(activeHookProvider);
    final lastEpisodeAsync = ref.watch(lastEpisodeTitleProvider);
    final lastArtifactAsync = ref.watch(lastArtifactLabelProvider);

    return AppScaffold(
      title: 'Next Act',
      scrollable: false,
      child: hookAsync.when(
        data: (hook) {
          final lastEpisode = lastEpisodeAsync.value ?? '';
          final lastArtifact = lastArtifactAsync.value ?? '';

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SectionHeader(
                  title: 'Continuity is active',
                  subtitle:
                      'The universe has not reset. Your last act still has consequences.',
                ),
                const SizedBox(height: AppSpacing.lg),
                const DemoNoteCard(
                  label: 'Return Hook',
                  body:
                      'This screen demonstrates how the product motivates return without feeling emotionally manipulative.',
                ),
                const SizedBox(height: AppSpacing.lg),
                HookCard(
                  headline: hook.headline,
                  hookType: hook.hookType,
                  hookLine: hook.hookLine,
                  returnReason: hook.returnReason,
                ),
                const SizedBox(height: AppSpacing.lg),
                if (lastEpisode.isNotEmpty || lastArtifact.isNotEmpty)
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Theme.of(context).colorScheme.surface,
                      border: Border.all(color: Colors.white.withAlpha(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recent continuity signals',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(height: 10),
                        if (lastEpisode.isNotEmpty)
                          Text(
                            'Last episode: $lastEpisode',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        if (lastArtifact.isNotEmpty) ...[
                          const SizedBox(height: 8),
                          Text(
                            'Latest portable result: $lastArtifact',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ],
                    ),
                  )
                else
                  EmptyStateCard(
                    title: 'No prior arc yet',
                    subtitle:
                        'Complete one act and the universe will begin carrying forward your strongest continuity signals.',
                    action: FilledButton(
                      onPressed: () => context.go(AppRoutes.episodeSetup),
                      child: const Text('Start an Episode'),
                    ),
                  ),
                const SizedBox(height: AppSpacing.xl),
                ActionButtonRow(
                  actions: [
                    FilledButton(
                      onPressed: () => context.go(AppRoutes.home),
                      child: const Text('Back to Home'),
                    ),
                    OutlinedButton(
                      onPressed: () => context.go(AppRoutes.archive),
                      child: const Text('Open Archive'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        loading: () => const LoadingStage(
          title: 'Opening the next act',
          subtitle:
              'The companion is retrieving the strongest continuity signal.',
        ),
        error: (error, stackTrace) => const LoadingStage(
          title: 'Rebuilding continuity',
          subtitle: 'A lighter continuation thread is being surfaced.',
        ),
      ),
    );
  }
}