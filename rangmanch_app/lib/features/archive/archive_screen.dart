import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/constants.dart';
import '../../core/utils/spacing.dart';
import '../../shared/mock/mock_hook_data.dart';
import '../../shared/widgets/action_button_row.dart';
import '../../shared/widgets/app_scaffold.dart';
import '../../shared/widgets/demo_note_card.dart';
import '../../shared/widgets/empty_state_card.dart';
import '../../shared/widgets/section_header.dart';
import 'archive_controller.dart';

class ArchiveScreen extends ConsumerWidget {
  const ArchiveScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final traces = mockArchiveTraces;
    final archiveAsync = ref.watch(archiveStateProvider);

    return AppScaffold(
      title: 'Archive',
      child: archiveAsync.when(
        data: (archiveState) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeader(
              title: 'Recent memory',
              subtitle:
                  'A lightweight view into your recent acts, verdicts, and portable outcomes.',
            ),
            const SizedBox(height: AppSpacing.lg),
            const DemoNoteCard(
              label: 'Continuity Proof',
              body:
                  'This screen exists to show that the universe does not reset after each act.',
            ),
            const SizedBox(height: AppSpacing.lg),
            if (!archiveState.hasEpisode &&
                !archiveState.hasArtifact &&
                !archiveState.hasHook)
              EmptyStateCard(
                title: 'Your archive is waiting',
                subtitle:
                    'Complete your first act and the universe will begin preserving your strongest traces here.',
                action: FilledButton(
                  onPressed: () => context.go(AppRoutes.episodeSetup),
                  child: const Text('Start First Episode'),
                ),
              )
            else ...[
              if (archiveState.hasEpisode)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _ArchiveTraceCard(
                    tag: 'Episode',
                    title: archiveState.lastEpisodeTitle,
                    subtitle:
                        'This title remains part of your current entertainment history.',
                  ),
                ),
              if (archiveState.hasArtifact)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _ArchiveTraceCard(
                    tag: 'Artifact',
                    title: archiveState.lastArtifactLabel,
                    subtitle:
                        'A portable result from a recent act is still carrying weight.',
                  ),
                ),
              if (archiveState.hasHook)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _ArchiveTraceCard(
                    tag: 'Hook',
                    title: 'Active continuity thread',
                    subtitle: archiveState.activeHookLine,
                  ),
                ),
              ...traces.map(
                (trace) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _ArchiveTraceCard(
                    tag: trace.tag,
                    title: trace.title,
                    subtitle: trace.subtitle,
                  ),
                ),
              ),
            ],
            const SizedBox(height: AppSpacing.xl),
            ActionButtonRow(
              actions: [
                FilledButton(
                  onPressed: () => context.go(AppRoutes.home),
                  child: const Text('Back Home'),
                ),
                OutlinedButton(
                  onPressed: () => context.go(AppRoutes.nextAct),
                  child: const Text('Open Next Act'),
                ),
              ],
            ),
          ],
        ),
        loading: () => const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: CircularProgressIndicator(),
          ),
        ),
        error: (error, stackTrace) => EmptyStateCard(
          title: 'Archive temporarily unavailable',
          subtitle:
              'The universe could not reconstruct your recent traces right now.',
          action: FilledButton(
            onPressed: () => context.go(AppRoutes.home),
            child: const Text('Back Home'),
          ),
        ),
      ),
    );
  }
}

class _ArchiveTraceCard extends StatelessWidget {
  final String tag;
  final String title;
  final String subtitle;

  const _ArchiveTraceCard({
    required this.tag,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            tag.toUpperCase(),
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  letterSpacing: 0.8,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}