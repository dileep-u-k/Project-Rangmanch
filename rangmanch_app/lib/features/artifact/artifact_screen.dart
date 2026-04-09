import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/constants.dart';
import '../../core/utils/spacing.dart';
import '../../shared/widgets/action_button_row.dart';
import '../../shared/widgets/app_scaffold.dart';
import '../../shared/widgets/artifact_frame.dart';
import '../../shared/widgets/demo_note_card.dart';
import '../../shared/widgets/loading_stage.dart';
import '../../shared/widgets/section_header.dart';
import 'artifact_controller.dart';

class ArtifactScreen extends ConsumerWidget {
  const ArtifactScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final artifactAsync = ref.watch(artifactProvider);
    final shareCaptionAsync = ref.watch(artifactShareCaptionProvider);

    return AppScaffold(
      title: 'Artifact / Share',
      scrollable: false,
      child: artifactAsync.when(
        data: (artifact) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionHeader(
                title: 'Portable outcome',
                subtitle:
                    'This is the compact version of your act that feels worth saving or showing.',
              ),
              const SizedBox(height: AppSpacing.lg),
              const DemoNoteCard(
                label: 'Growth Surface',
                body:
                    'This screen demonstrates how the product turns entertainment into portable value.',
              ),
              const SizedBox(height: AppSpacing.lg),
              ArtifactFrame(
                eyebrow: artifact.styleTag,
                headline: artifact.headline,
                subheadline: artifact.subheadline,
                resultCore: artifact.resultCore,
                caption: artifact.caption,
              ),
              const SizedBox(height: AppSpacing.xl),
              shareCaptionAsync.when(
                data: (caption) => Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Theme.of(context).colorScheme.surface,
                    border: Border.all(color: Colors.white.withAlpha(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Suggested Share Caption',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        caption,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                loading: () => const SizedBox.shrink(),
                error: (error, stackTrace) => const SizedBox.shrink(),
              ),
              const SizedBox(height: AppSpacing.xl),
              ActionButtonRow(
                actions: [
                  FilledButton(
                    onPressed: () {},
                    child: const Text('Save'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Share'),
                  ),
                  OutlinedButton(
                    onPressed: () => context.go(AppRoutes.nextAct),
                    child: const Text('Open Next Act'),
                  ),
                  TextButton(
                    onPressed: () => context.go(AppRoutes.home),
                    child: const Text('Back Home'),
                  ),
                ],
              ),
            ],
          ),
        ),
        loading: () => const LoadingStage(
          title: 'Framing your artifact',
          subtitle:
              'The universe is compacting this act into something portable.',
        ),
        error: (error, stackTrace) => const LoadingStage(
          title: 'Recovering the artifact',
          subtitle:
              'A fallback poster is being staged so the show stays intact.',
        ),
      ),
    );
  }
}