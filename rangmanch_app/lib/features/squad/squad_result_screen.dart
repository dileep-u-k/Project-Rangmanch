import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/constants.dart';
import '../../core/utils/spacing.dart';
import '../../shared/widgets/action_button_row.dart';
import '../../shared/widgets/app_scaffold.dart';
import '../../shared/widgets/demo_note_card.dart';
import '../../shared/widgets/loading_stage.dart';
import '../../shared/widgets/section_header.dart';
import '../../shared/widgets/squad_card.dart';
import 'squad_controller.dart';

class SquadResultScreen extends ConsumerWidget {
  const SquadResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final squadAsync = ref.watch(squadProvider);

    return AppScaffold(
      title: 'Squad Result',
      scrollable: false,
      child: squadAsync.when(
        data: (squad) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DemoNoteCard(
                label: 'Social Output',
                body:
                    'This result is designed to feel compact, recognizable, and screenshot-worthy.',
              ),
              const SizedBox(height: AppSpacing.lg),
              SquadCard(
                title: squad.squadTitle,
                subtitle: squad.squadFrame,
                children: [
                  Text(
                    squad.groupDynamicSummary,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.xl),
              const SectionHeader(
                title: 'Assigned roles',
                subtitle: 'How the universe currently sees this cast.',
              ),
              const SizedBox(height: AppSpacing.md),
              ...squad.memberRoles.map(
                (role) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Theme.of(context).colorScheme.surface,
                      border: Border.all(color: Colors.white.withAlpha(20)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            role.memberLabel,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        Text(
                          role.assignedRole,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              SquadCard(
                title: 'Verdict',
                subtitle: squad.verdictOrRanking,
                children: [
                  Text(
                    squad.socialPayoffLine,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.xxl),
              ActionButtonRow(
                actions: [
                  FilledButton(
                    onPressed: () => context.go(AppRoutes.artifact),
                    child: const Text('View Artifact'),
                  ),
                  OutlinedButton(
                    onPressed: () => context.go(AppRoutes.nextAct),
                    child: const Text('Next Act'),
                  ),
                ],
              ),
            ],
          ),
        ),
        loading: () => const LoadingStage(
          title: 'Reading the group chaos',
          subtitle:
              'The companion is assigning roles and forming a verdict.',
        ),
        error: (error, stackTrace) => const LoadingStage(
          title: 'Reframing the squad',
          subtitle:
              'A simpler but sharper social interpretation is being prepared.',
        ),
      ),
    );
  }
}