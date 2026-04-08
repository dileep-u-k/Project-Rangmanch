import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app/constants.dart';
import '../../core/utils/spacing.dart';
import '../../shared/widgets/companion_banner.dart';
import '../../shared/widgets/mood_chip_row.dart';
import '../../shared/widgets/section_header.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _nameController = TextEditingController();
  String? _selectedVibe;
  String? _selectedHumor;

  final vibes = const [
    'Chaotic',
    'Dramatic',
    'Chill',
    'Playful',
  ];

  final humorStyles = const [
    'Witty',
    'Dramatic',
    'Dry',
    'Savvy',
  ];

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _enterUniverse() {
    context.go(AppRoutes.home);
  }

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
                eyebrow: 'World Entry',
                headline: 'Your life already has plot. RANGMANCH just gives it production value.',
                subline: 'Set your vibe, choose your tone, and enter a living entertainment universe.',
              ),
              const SizedBox(height: AppSpacing.xl),
              const SectionHeader(
                title: 'Enter your stage name',
                subtitle: 'Keep it simple. This is how the world will address you.',
              ),
              const SizedBox(height: AppSpacing.md),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: 'Nickname',
                ),
              ),
              const SizedBox(height: AppSpacing.xl),
              const SectionHeader(
                title: 'Pick your current vibe',
                subtitle: 'This helps shape how the world feels when you enter.',
              ),
              const SizedBox(height: AppSpacing.md),
              MoodChipRow(
                moods: vibes,
                selectedMood: _selectedVibe,
                onMoodSelected: (value) {
                  setState(() {
                    _selectedVibe = value;
                  });
                },
              ),
              const SizedBox(height: AppSpacing.xl),
              const SectionHeader(
                title: 'Choose your humor flavor',
                subtitle: 'Your companion will lean into this style.',
              ),
              const SizedBox(height: AppSpacing.md),
              MoodChipRow(
                moods: humorStyles,
                selectedMood: _selectedHumor,
                onMoodSelected: (value) {
                  setState(() {
                    _selectedHumor = value;
                  });
                },
              ),
              const SizedBox(height: AppSpacing.xxl),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: _enterUniverse,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Text('Enter My Universe'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}