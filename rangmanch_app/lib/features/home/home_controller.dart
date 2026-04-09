import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/services/continuity_service.dart';
import '../../core/storage/local_profile_store.dart';
import 'home_state.dart';

final homeStateProvider = FutureProvider<HomeState>((ref) async {
  final profileStore = LocalProfileStore();
  final continuityService = ContinuityService();

  final profile = await profileStore.loadProfile();
  final activeHook = await continuityService.getActiveHook();
  final lastEpisodeTitle = await continuityService.loadLastEpisodeTitle() ?? '';
  final lastArtifactLabel = await continuityService.loadLastArtifactLabel() ?? '';

  final nickname = profile.nickname.trim();
  final vibe = profile.selectedVibe.trim();
  final humor = profile.selectedHumorStyle.trim();
  final tone = profile.selectedCompanionTone.trim();

  final headline = nickname.isEmpty
      ? 'Your day already looks like it deserves an act structure.'
      : '$nickname, your day already looks like it deserves an act structure.';

  final sublineBase = tone.isEmpty
      ? 'Pick a mode, choose a mood, or continue the aftermath.'
      : 'Your companion is currently tuned for $tone energy. Pick a mode or continue the aftermath.';

  final subline = lastEpisodeTitle.isEmpty
      ? sublineBase
      : '$sublineBase Last major act: $lastEpisodeTitle.';

  final continuityLine = lastArtifactLabel.isEmpty
      ? activeHook.hookLine
      : '${activeHook.hookLine} Latest portable result: $lastArtifactLabel.';

  return HomeState(
    headline: headline,
    subline: subline,
    continuityLine: continuityLine,
    activeVibe: vibe,
    activeHumorStyle: humor,
    activeCompanionTone: tone,
    lastEpisodeTitle: lastEpisodeTitle,
    lastArtifactLabel: lastArtifactLabel,
  );
});