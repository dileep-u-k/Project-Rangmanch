import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/constants.dart';
import '../../core/services/providers.dart';
import '../../core/utils/spacing.dart';
import '../../shared/widgets/app_scaffold.dart';
import '../../shared/widgets/mood_chip_row.dart';
import '../../shared/widgets/section_header.dart';
import 'squad_controller.dart';

class SquadSetupScreen extends ConsumerStatefulWidget {
  const SquadSetupScreen({super.key});

  @override
  ConsumerState<SquadSetupScreen> createState() => _SquadSetupScreenState();
}

class _SquadSetupScreenState extends ConsumerState<SquadSetupScreen> {
  final _friend1Controller = TextEditingController(text: 'Aarav');
  final _friend2Controller = TextEditingController(text: 'Diya');
  final _friend3Controller = TextEditingController(text: 'Kabir');

  final vibes = const [
    'Squad Energy',
    'Chaotic',
    'Savage',
    'Festival',
    'Match Night',
  ];

  @override
  void dispose() {
    _friend1Controller.dispose();
    _friend2Controller.dispose();
    _friend3Controller.dispose();
    super.dispose();
  }

  void _fillDemoExample() {
    final demo = ref.read(stableDemoServiceProvider);
    final names = demo.demoSquadNames();
    final controller = ref.read(squadScreenStateProvider.notifier);

    _friend1Controller.text = names[0];
    _friend2Controller.text = names[1];
    _friend3Controller.text = names[2];
    controller.setVibe(demo.demoSquadVibe());
  }

  void _generateSquadResult() {
    final controller = ref.read(squadScreenStateProvider.notifier);
    controller.setMembers([
      _friend1Controller.text,
      _friend2Controller.text,
      _friend3Controller.text,
    ]);
    context.go(AppRoutes.squadResult);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(squadScreenStateProvider);
    final controller = ref.read(squadScreenStateProvider.notifier);

    return AppScaffold(
      title: 'Squad Mode',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
            title: 'Assemble the cast',
            subtitle:
                'Add your current group and let the companion interpret the chaos.',
            trailing: TextButton(
              onPressed: _fillDemoExample,
              child: const Text('Use demo example'),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          TextField(
            controller: _friend1Controller,
            decoration: const InputDecoration(hintText: 'Friend 1'),
          ),
          const SizedBox(height: AppSpacing.md),
          TextField(
            controller: _friend2Controller,
            decoration: const InputDecoration(hintText: 'Friend 2'),
          ),
          const SizedBox(height: AppSpacing.md),
          TextField(
            controller: _friend3Controller,
            decoration: const InputDecoration(hintText: 'Friend 3'),
          ),
          const SizedBox(height: AppSpacing.xl),
          const SectionHeader(
            title: 'Choose the group energy',
            subtitle: 'This shapes the verdict style.',
          ),
          const SizedBox(height: AppSpacing.md),
          MoodChipRow(
            moods: vibes,
            selectedMood:
                state.selectedVibe.isEmpty ? null : state.selectedVibe,
            onMoodSelected: controller.setVibe,
          ),
          const SizedBox(height: AppSpacing.xxl),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: _generateSquadResult,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Text('Generate Squad Result'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}