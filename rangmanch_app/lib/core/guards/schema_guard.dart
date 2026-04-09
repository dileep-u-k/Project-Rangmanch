import '../models/episode_view_data.dart';
import '../utils/strings.dart';

class SchemaGuard {
  const SchemaGuard();

  bool isValidEpisode(EpisodeViewData data) {
    return !isBlank(data.title) &&
        !isBlank(data.theme) &&
        !isBlank(data.setup) &&
        !isBlank(data.castFrame) &&
        !isBlank(data.moodInterpretation) &&
        !isBlank(data.dramaticFrame) &&
        data.choices.isNotEmpty;
  }

  bool isValidEpisodeOutcome(EpisodeOutcomeViewData data) {
    return !isBlank(data.headline) &&
        !isBlank(data.summary) &&
        !isBlank(data.commentary) &&
        !isBlank(data.resultTone) &&
        !isBlank(data.artifactSeed) &&
        !isBlank(data.continuitySeed);
  }
}