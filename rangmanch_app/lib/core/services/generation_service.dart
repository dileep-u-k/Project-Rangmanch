import '../guards/content_fallbacks.dart';
import '../guards/schema_guard.dart';
import '../guards/tone_guard.dart';
import '../models/artifact_view_data.dart';
import '../models/episode_view_data.dart';
import '../models/generated_payload.dart';
import '../models/hook_view_data.dart';
import '../models/squad_view_data.dart';
import 'demo_seed_service.dart';

class GenerationService {
  final DemoSeedService _seedService;
  final SchemaGuard _schemaGuard;
  final ToneGuard _toneGuard;

  const GenerationService({
    DemoSeedService seedService = const DemoSeedService(),
    SchemaGuard schemaGuard = const SchemaGuard(),
    ToneGuard toneGuard = const ToneGuard(),
  })  : _seedService = seedService,
        _schemaGuard = schemaGuard,
        _toneGuard = toneGuard;

  Future<GeneratedPayload<EpisodeViewData>> generateEpisode({
    required String mood,
    required String situation,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 450));

    final seeded = _toneGuard.normalizeEpisode(
      _seedService.getEpisode(
        mood: mood,
        situation: situation,
      ),
    );

    if (_schemaGuard.isValidEpisode(seeded)) {
      return GeneratedPayload.seeded(seeded);
    }

    return const GeneratedPayload.fallback(fallbackEpisode);
  }

  Future<GeneratedPayload<EpisodeOutcomeViewData>> generateEpisodeOutcome({
    required String selectedChoiceId,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 350));

    final seeded = _toneGuard.normalizeEpisodeOutcome(
      _seedService.getEpisodeOutcome(
        selectedChoiceId: selectedChoiceId,
      ),
    );

    if (_schemaGuard.isValidEpisodeOutcome(seeded)) {
      return GeneratedPayload.seeded(seeded);
    }

    return const GeneratedPayload.fallback(fallbackEpisodeOutcome);
  }

  Future<SquadViewData> generateSquad({
    required List<String> members,
    required String vibe,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 450));
    return _seedService.getSquad(
      members: members,
      vibe: vibe,
    );
  }

  Future<ArtifactViewData> generateArtifact({
    String? episodeTitle,
    String? artifactLabel,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 250));
    return _seedService.getArtifact(
      episodeTitle: episodeTitle,
      artifactLabel: artifactLabel,
    );
  }

  Future<HookViewData> generateHook() async {
    await Future<void>.delayed(const Duration(milliseconds: 250));
    return _seedService.getHook();
  }
}
