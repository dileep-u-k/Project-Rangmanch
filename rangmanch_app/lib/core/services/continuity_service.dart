import '../models/hook_view_data.dart';
import '../storage/local_memory_store.dart';
import 'demo_seed_service.dart';

class ContinuityService {
  final LocalMemoryStore _store;
  final DemoSeedService _seedService;

  ContinuityService({
    LocalMemoryStore? store,
    DemoSeedService seedService = const DemoSeedService(),
  })  : _store = store ?? LocalMemoryStore(),
        _seedService = seedService;

  Future<void> saveHookSeed(String value) async {
    await _store.saveLastHook(value);
  }

  Future<String?> loadLastHookSeed() async {
    return _store.loadLastHook();
  }

  Future<String?> loadLastEpisodeTitle() async {
    return _store.loadLastEpisodeTitle();
  }

  Future<String?> loadLastArtifactLabel() async {
    return _store.loadLastArtifactLabel();
  }

  Future<HookViewData> getActiveHook() async {
    final savedHook = await loadLastHookSeed();
    final base = _seedService.getHook();

    if (savedHook == null || savedHook.isEmpty) {
      return base;
    }

    return HookViewData(
      headline: base.headline,
      hookType: base.hookType,
      hookLine: savedHook,
      hookEnergy: base.hookEnergy,
      returnReason: base.returnReason,
    );
  }
}