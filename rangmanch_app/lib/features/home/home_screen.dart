import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/constants.dart';
import '../../core/utils/motion.dart';
import '../../core/utils/spacing.dart';
import '../../shared/widgets/action_button_row.dart';
import '../../shared/widgets/app_scaffold.dart';
import '../../shared/widgets/companion_banner.dart';
import '../../shared/widgets/demo_note_card.dart';
import '../../shared/widgets/mode_card.dart';
import '../../shared/widgets/mood_chip_row.dart';
import '../../shared/widgets/section_header.dart';
import 'home_controller.dart';
import 'home_state.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  String? selectedMood;

  @override
  Widget build(BuildContext context) {
    final homeStateAsync = ref.watch(homeStateProvider);

    return AppScaffold(
      scrollable: true,
      child: homeStateAsync.when(
        data: (homeState) => _HomeContent(
          homeState: homeState,
          selectedMood: selectedMood,
          onMoodSelected: (value) {
            setState(() {
              selectedMood = value;
            });
          },
        ),
        loading: () => const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: CircularProgressIndicator(),
          ),
        ),
        error: (error, stackTrace) => const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text('Unable to load the universe right now.'),
          ),
        ),
      ),
    );
  }
}

class _HomeContent extends StatelessWidget {
  final HomeState homeState;
  final String? selectedMood;
  final ValueChanged<String> onMoodSelected;

  const _HomeContent({
    required this.homeState,
    required this.selectedMood,
    required this.onMoodSelected,
  });

  static const quickMoods = [
    'Bored',
    'Chaotic',
    'Dramatic',
    'Chill',
    'Squad Energy',
    'Decompression',
  ];

  @override
  Widget build(BuildContext context) {
    final profileSummary = [
      if (homeState.activeVibe.isNotEmpty) 'Vibe: ${homeState.activeVibe}',
      if (homeState.activeHumorStyle.isNotEmpty)
        'Humor: ${homeState.activeHumorStyle}',
      if (homeState.activeCompanionTone.isNotEmpty)
        'Tone: ${homeState.activeCompanionTone}',
    ].join(' • ');

    final recentSummary = [
      if (homeState.lastEpisodeTitle.isNotEmpty)
        'Last episode: ${homeState.lastEpisodeTitle}',
      if (homeState.lastArtifactLabel.isNotEmpty)
        'Artifact: ${homeState.lastArtifactLabel}',
    ].join(' • ');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CompanionBanner(
          eyebrow: 'Tonight’s Universe',
          headline: homeState.headline,
          subline: homeState.subline,
        ).stageFadeIn(),
        const SizedBox(height: AppSpacing.lg),
        if (profileSummary.isNotEmpty) ...[
          DemoNoteCard(
            label: 'Active Profile Seed',
            body: profileSummary,
          ).stageFadeIn(beginOffsetY: 0.02),
          const SizedBox(height: AppSpacing.lg),
        ],
        if (recentSummary.isNotEmpty) ...[
          DemoNoteCard(
            label: 'Recent World State',
            body: recentSummary,
          ).stageFadeIn(beginOffsetY: 0.02),
          const SizedBox(height: AppSpacing.lg),
        ],
        SectionHeader(
          title: 'Start your next act',
          subtitle:
              'Choose how you want the world to interpret this moment.',
          trailing: TextButton(
            onPressed: () => context.go(AppRoutes.nextAct),
            child: const Text('Next Act'),
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        ModeCard(
          title: 'Today’s Episode',
          description:
              'Turn your current mood, chaos, or overthinking into a personalized mini-drama.',
          tag: 'Flagship',
          primary: true,
          onTap: () => context.go(AppRoutes.episodeSetup),
        ).stageFadeIn(),
        const SizedBox(height: AppSpacing.md),
        ModeCard(
          title: 'Squad Mode',
          description:
              'Interpret your group energy into verdicts, roles, and compact social entertainment.',
          tag: 'Social Wedge',
          onTap: () => context.go(AppRoutes.squadSetup),
        ).stageFadeIn(beginOffsetY: 0.02),
        const SizedBox(height: AppSpacing.xl),
        const SectionHeader(
          title: 'Quick mood entry',
          subtitle: 'Fast routes into the universe.',
        ),
        const SizedBox(height: AppSpacing.md),
        MoodChipRow(
          moods: quickMoods,
          selectedMood: selectedMood,
          onMoodSelected: onMoodSelected,
        ),
        const SizedBox(height: AppSpacing.xl),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Theme.of(context).colorScheme.surface,
            border: Border.all(color: Colors.white.withAlpha(20)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Active Continuation',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 8),
              Text(
                homeState.continuityLine,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      height: 1.25,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                'Return to the thread, open the next reveal, or jump into a fresh scene.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 14),
              ActionButtonRow(
                actions: [
                  FilledButton(
                    onPressed: () => context.go(AppRoutes.nextAct),
                    child: const Text('Continue'),
                  ),
                  OutlinedButton(
                    onPressed: () => context.go(AppRoutes.archive),
                    child: const Text('Archive'),
                  ),
                ],
              ),
            ],
          ),
        ).stageFadeIn(beginOffsetY: 0.015),
      ],
    );
  }
}