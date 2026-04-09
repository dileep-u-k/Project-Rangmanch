import '../models/artifact_view_data.dart';
import '../models/episode_view_data.dart';
import '../models/hook_view_data.dart';
import '../models/squad_view_data.dart';
import '../../shared/mock/mock_artifact_data.dart';
import '../../shared/mock/mock_episode_data.dart';
import '../../shared/mock/mock_hook_data.dart';
import '../../shared/mock/mock_squad_data.dart';

class DemoSeedService {
  const DemoSeedService();

  EpisodeViewData getEpisode() => mockEpisode;

  EpisodeOutcomeViewData getEpisodeOutcome() => mockEpisodeOutcome;

  SquadViewData getSquad() => mockSquad;

  ArtifactViewData getArtifact() => mockArtifact;

  HookViewData getHook() => mockHook;

  List<ArchiveTraceViewData> getArchiveTraces() => mockArchiveTraces;
}