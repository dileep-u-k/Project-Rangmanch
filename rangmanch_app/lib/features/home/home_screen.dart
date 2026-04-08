import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app/constants.dart';
import '../../core/utils/spacing.dart';
import '../../shared/widgets/companion_banner.dart';
import '../../shared/widgets/mode_card.dart';
import '../../shared/widgets/mood_chip_row.dart';
import '../../shared/widgets/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedMood;

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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: AppSpacing.pagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CompanionBanner(
                eyebrow: 'Tonight’s Universe',
                headline: 'Your day already looks like it deserves an act structure.',
                subline: 'Pick a mode, choose a mood, or continue the aftermath.',
              ),
              const SizedBox(height: AppSpacing.xl),
              SectionHeader(
                title: 'Start your next act',
                subtitle: 'Choose how you want the world to interpret this moment.',
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
              ),
              const SizedBox(height: AppSpacing.md),
              ModeCard(
                title: 'Squad Mode',
                description:
                    'Interpret your group energy into verdicts, roles, and compact social entertainment.',
                tag: 'Social Wedge',
                onTap: () => context.go(AppRoutes.squadSetup),
              ),
              const SizedBox(height: AppSpacing.xl),
              const SectionHeader(
                title: 'Quick mood entry',
                subtitle: 'Fast routes into the universe.',
              ),
              const SizedBox(height: AppSpacing.md),
              MoodChipRow(
                moods: quickMoods,
                selectedMood: selectedMood,
                onMoodSelected: (value) {
                  setState(() {
                    selectedMood = value;
                  });
                },
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
                      'Your last act ended in unresolved aftermath. The sequel is waiting.',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Return to the thread, open the next reveal, or jump into a fresh scene.',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 14),
                    Wrap(
                      spacing: 10,
                      children: [
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}