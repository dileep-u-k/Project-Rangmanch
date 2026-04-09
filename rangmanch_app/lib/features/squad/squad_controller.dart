import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/models/squad_view_data.dart';
import '../../core/services/providers.dart';
import '../../core/storage/local_memory_store.dart';
import 'squad_screen_state.dart';

final squadScreenStateProvider =
    NotifierProvider<SquadScreenStateController, SquadScreenState>(
  SquadScreenStateController.new,
);

class SquadScreenStateController extends Notifier<SquadScreenState> {
  @override
  SquadScreenState build() {
    return const SquadScreenState();
  }

  void setMembers(List<String> members) {
    final cleaned = members
        .map((name) => name.trim())
        .where((name) => name.isNotEmpty)
        .toList();
    state = state.copyWith(members: cleaned);
  }

  void setVibe(String value) {
    state = state.copyWith(selectedVibe: value);
  }

  void setGenerating(bool value) {
    state = state.copyWith(isGenerating: value);
  }
}

final squadProvider = FutureProvider<SquadViewData>((ref) async {
  final service = ref.watch(generationServiceProvider);
  final screenState = ref.watch(squadScreenStateProvider);

  final vibe = screenState.selectedVibe.isEmpty
      ? 'Squad Energy'
      : screenState.selectedVibe;

  final members = screenState.members.isEmpty
      ? const ['Aarav', 'Diya', 'Kabir']
      : screenState.members;

  final result = await service.generateSquad(
    members: members,
    vibe: vibe,
  );

  final store = LocalMemoryStore();
  await store.saveLastArtifactLabel(result.artifactSeed);
  await store.saveLastHook(result.continuitySeed);

  return result;
});