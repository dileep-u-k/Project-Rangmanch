import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/constants.dart';
import '../../core/services/providers.dart';
import '../../core/utils/spacing.dart';
import '../../core/utils/validators.dart';
import '../../shared/widgets/app_scaffold.dart';
import '../../shared/widgets/mood_chip_row.dart';
import '../../shared/widgets/section_header.dart';
import 'episode_controller.dart';

class EpisodeSetupScreen extends ConsumerStatefulWidget {
  const EpisodeSetupScreen({super.key});

  @override
  ConsumerState<EpisodeSetupScreen> createState() => _EpisodeSetupScreenState();
}

class _EpisodeSetupScreenState extends ConsumerState<EpisodeSetupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _situationController = TextEditingController();

  final moods = const [
    'Bored',
    'Chaotic',
    'Dramatic',
    'Overthinking',
    'Chill',
    'Decompression',
  ];

  @override
  void dispose() {
    _situationController.dispose();
    super.dispose();
  }

  void _fillDemoExample() {
    final demo = ref.read(stableDemoServiceProvider);
    final controller = ref.read(episodeScreenStateProvider.notifier);

    controller.setMood(demo.demoEpisodeMoods().first);
    controller.setSituation(demo.demoSituation());
  }

  void _generateEpisode() {
    if (!_formKey.currentState!.validate()) return;
    context.go(AppRoutes.episodeExperience);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(episodeScreenStateProvider);
    final controller = ref.read(episodeScreenStateProvider.notifier);

    if (_situationController.text != state.currentSituation) {
      _situationController.value = _situationController.value.copyWith(
        text: state.currentSituation,
        selection:
            TextSelection.collapsed(offset: state.currentSituation.length),
      );
    }

    return AppScaffold(
      title: 'Today’s Episode',
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(
              title: 'Set the stage',
              subtitle:
                  'Give the universe your current moment. Keep it short but specific.',
              trailing: TextButton(
                onPressed: _fillDemoExample,
                child: const Text('Use demo example'),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            MoodChipRow(
              moods: moods,
              selectedMood: state.selectedMood.isEmpty ? null : state.selectedMood,
              onMoodSelected: controller.setMood,
            ),
            const SizedBox(height: AppSpacing.xl),
            TextFormField(
              controller: _situationController,
              validator: validateSituation,
              onChanged: controller.setSituation,
              minLines: 4,
              maxLines: 6,
              decoration: const InputDecoration(
                hintText:
                    'Example: my teammate disappeared before submission and now everything feels ridiculous',
              ),
            ),
            const SizedBox(height: AppSpacing.xxl),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _generateEpisode,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Text('Generate My Episode'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}