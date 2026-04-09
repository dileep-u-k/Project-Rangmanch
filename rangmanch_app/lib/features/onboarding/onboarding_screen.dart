import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/constants.dart';
import '../../core/utils/motion.dart';
import '../../core/utils/spacing.dart';
import '../../core/utils/validators.dart';
import '../../shared/widgets/app_scaffold.dart';
import '../../shared/widgets/companion_banner.dart';
import '../../shared/widgets/mood_chip_row.dart';
import '../../shared/widgets/section_header.dart';
import 'onboarding_controller.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

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

  final companionTones = const [
    'Host',
    'Narrator',
    'Judge',
    'Hype',
  ];

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _enterUniverse() async {
    if (!_formKey.currentState!.validate()) return;

    final controller = ref.read(onboardingControllerProvider.notifier);
    controller.setNickname(_nameController.text);

    await controller.persistProfile();

    if (!mounted) return;
    context.go(AppRoutes.home);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(onboardingControllerProvider);
    final controller = ref.read(onboardingControllerProvider.notifier);

    if (_nameController.text != state.nickname) {
      _nameController.value = _nameController.value.copyWith(
        text: state.nickname,
        selection: TextSelection.collapsed(offset: state.nickname.length),
      );
    }

    return AppScaffold(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CompanionBanner(
              eyebrow: 'World Entry',
              headline:
                  'Your life already has plot. RANGMANCH just gives it production value.',
              subline:
                  'Set your vibe, choose your humor, tune your companion, and enter a living entertainment universe.',
            ).stageFadeIn(),
            const SizedBox(height: AppSpacing.xl),
            const SectionHeader(
              title: 'Enter your stage name',
              subtitle:
                  'This is how the universe will address you across acts.',
            ),
            const SizedBox(height: AppSpacing.md),
            TextFormField(
              controller: _nameController,
              validator: validateNickname,
              onChanged: controller.setNickname,
              decoration: const InputDecoration(
                hintText: 'Nickname',
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            const SectionHeader(
              title: 'Pick your current vibe',
              subtitle: 'This changes the tone of your entry into the world.',
            ),
            const SizedBox(height: AppSpacing.md),
            MoodChipRow(
              moods: vibes,
              selectedMood: state.selectedVibe,
              onMoodSelected: controller.setVibe,
            ),
            const SizedBox(height: AppSpacing.xl),
            const SectionHeader(
              title: 'Choose your humor flavor',
              subtitle: 'This influences how the companion frames your acts.',
            ),
            const SizedBox(height: AppSpacing.md),
            MoodChipRow(
              moods: humorStyles,
              selectedMood: state.selectedHumorStyle,
              onMoodSelected: controller.setHumorStyle,
            ),
            const SizedBox(height: AppSpacing.xl),
            const SectionHeader(
              title: 'Tune your companion posture',
              subtitle:
                  'This defines how the companion tends to show up at first.',
            ),
            const SizedBox(height: AppSpacing.md),
            MoodChipRow(
              moods: companionTones,
              selectedMood: state.selectedCompanionTone,
              onMoodSelected: controller.setCompanionTone,
            ),
            const SizedBox(height: AppSpacing.xxl),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: state.isSaving ? null : _enterUniverse,
                style: FilledButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    state.isSaving ? 'Entering...' : 'Enter My Universe',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}