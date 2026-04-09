import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/constants.dart';
import '../../core/utils/spacing.dart';
import '../../shared/widgets/app_scaffold.dart';
import '../../shared/widgets/choice_button.dart';
import '../../shared/widgets/demo_note_card.dart';
import '../../shared/widgets/episode_card.dart';
import '../../shared/widgets/loading_stage.dart';
import '../../shared/widgets/section_header.dart';
import 'episode_controller.dart';

class EpisodeExperienceScreen extends ConsumerWidget {
  const EpisodeExperienceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodeAsync = ref.watch(episodeProvider);
    final screenController = ref.read(episodeScreenStateProvider.notifier);

    return AppScaffold(
      title: 'Episode Experience',
      scrollable: false,
      child: episodeAsync.when(
        data: (payload) {
          final episode = payload.data;

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (payload.usedFallback) ...[
                  const DemoNoteCard(
                    label: 'Fallback Active',
                    body:
                        'The universe simplified this act to keep the demo stable and readable.',
                  ),
                  const SizedBox(height: AppSpacing.lg),
                ],
                EpisodeCard(
                  eyebrow: episode.theme,
                  title: episode.title,
                  body: episode.setup,
                ),
                const SizedBox(height: AppSpacing.lg),
                EpisodeCard(
                  eyebrow: 'Cast',
                  title: episode.castFrame,
                  body:
                      '${episode.moodInterpretation}\n\n${episode.dramaticFrame}',
                ),
                const SizedBox(height: AppSpacing.xl),
                const SectionHeader(
                  title: 'Choose your path',
                  subtitle: 'Pick the version of this act you want to perform.',
                ),
                const SizedBox(height: AppSpacing.md),
                ...episode.choices.map(
                  (choice) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: ChoiceButton(
                      label: choice.label,
                      flavor: choice.flavor,
                      onTap: () {
                        screenController.setChoice(choice.id);
                        context.go(AppRoutes.episodeOutcome);
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const LoadingStage(
          title: 'Staging your episode',
          subtitle:
              'The companion is converting your current moment into an act.',
        ),
        error: (error, stackTrace) => const LoadingStage(
          title: 'Falling back gracefully',
          subtitle:
              'The universe is simplifying this act so the show can continue.',
        ),
      ),
    );
  }
}