import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/models/archive_state.dart';
import '../../core/services/providers.dart';

final archiveStateProvider = FutureProvider<ArchiveState>((ref) async {
  final continuityService = ref.watch(continuityServiceProvider);
  final hook = await continuityService.getActiveHook();
  final lastEpisodeTitle = await continuityService.loadLastEpisodeTitle() ?? '';
  final lastArtifactLabel = await continuityService.loadLastArtifactLabel() ?? '';

  return ArchiveState(
    lastEpisodeTitle: lastEpisodeTitle,
    lastArtifactLabel: lastArtifactLabel,
    activeHookLine: hook.hookLine,
  );
});