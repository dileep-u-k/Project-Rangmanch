import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/models/hook_view_data.dart';
import '../../core/services/providers.dart';

final activeHookProvider = FutureProvider<HookViewData>((ref) async {
  final service = ref.watch(continuityServiceProvider);
  return service.getActiveHook();
});

final lastEpisodeTitleProvider = FutureProvider<String?>((ref) async {
  final service = ref.watch(continuityServiceProvider);
  return service.loadLastEpisodeTitle();
});

final lastArtifactLabelProvider = FutureProvider<String?>((ref) async {
  final service = ref.watch(continuityServiceProvider);
  return service.loadLastArtifactLabel();
});