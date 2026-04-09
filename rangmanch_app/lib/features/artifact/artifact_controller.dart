import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/models/artifact_view_data.dart';
import '../../core/services/providers.dart';

final artifactProvider = FutureProvider<ArtifactViewData>((ref) async {
  final generationService = ref.watch(generationServiceProvider);
  final continuityService = ref.watch(continuityServiceProvider);

  final lastEpisodeTitle = await continuityService.loadLastEpisodeTitle();
  final lastArtifactLabel = await continuityService.loadLastArtifactLabel();

  return generationService.generateArtifact(
    episodeTitle: lastEpisodeTitle,
    artifactLabel: lastArtifactLabel,
  );
});

final artifactShareCaptionProvider = FutureProvider<String>((ref) async {
  final artifact = await ref.watch(artifactProvider.future);
  final shareService = ref.watch(artifactShareServiceProvider);

  return shareService.buildShareCaption(
    headline: artifact.headline,
    subheadline: artifact.subheadline,
    resultCore: artifact.resultCore,
  );
});
