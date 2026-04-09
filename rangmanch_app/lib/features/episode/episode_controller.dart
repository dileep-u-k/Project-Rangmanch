import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/models/episode_view_data.dart';
import '../../core/models/generated_payload.dart';
import '../../core/services/providers.dart';
import '../../core/storage/local_memory_store.dart';
import 'episode_screen_state.dart';

final episodeScreenStateProvider =
    NotifierProvider<EpisodeScreenStateController, EpisodeScreenState>(
  EpisodeScreenStateController.new,
);

class EpisodeScreenStateController extends Notifier<EpisodeScreenState> {
  @override
  EpisodeScreenState build() {
    return const EpisodeScreenState();
  }

  void setMood(String value) {
    state = state.copyWith(selectedMood: value);
  }

  void setSituation(String value) {
    state = state.copyWith(currentSituation: value);
  }

  void setChoice(String value) {
    state = state.copyWith(selectedChoiceId: value);
  }

  void setGenerating(bool value) {
    state = state.copyWith(isGenerating: value);
  }
}

final episodeProvider = FutureProvider<
    GeneratedPayload<EpisodeViewData>>((ref) async {
  final service = ref.watch(generationServiceProvider);
  final screenState = ref.watch(episodeScreenStateProvider);

  final payload = await service.generateEpisode(
    mood: screenState.selectedMood,
    situation: screenState.currentSituation,
  );

  final store = LocalMemoryStore();
  await store.saveLastEpisodeTitle(payload.data.title);

  return payload;
});

final episodeOutcomeProvider = FutureProvider<
    GeneratedPayload<EpisodeOutcomeViewData>>((ref) async {
  final service = ref.watch(generationServiceProvider);
  final screenState = ref.watch(episodeScreenStateProvider);

  final payload = await service.generateEpisodeOutcome(
    selectedChoiceId: screenState.selectedChoiceId,
  );

  final store = LocalMemoryStore();
  await store.saveLastHook(payload.data.continuitySeed);
  await store.saveLastArtifactLabel(payload.data.artifactSeed);

  return payload;
});