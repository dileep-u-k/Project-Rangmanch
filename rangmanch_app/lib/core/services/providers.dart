import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../guards/schema_guard.dart';
import '../guards/tone_guard.dart';
import 'artifact_share_service.dart';
import 'continuity_service.dart';
import 'demo_seed_service.dart';
import 'generation_service.dart';
import 'stable_demo_service.dart';

final demoSeedServiceProvider = Provider<DemoSeedService>((ref) {
  return const DemoSeedService();
});

final schemaGuardProvider = Provider<SchemaGuard>((ref) {
  return const SchemaGuard();
});

final toneGuardProvider = Provider<ToneGuard>((ref) {
  return const ToneGuard();
});

final artifactShareServiceProvider = Provider<ArtifactShareService>((ref) {
  return const ArtifactShareService();
});

final stableDemoServiceProvider = Provider<StableDemoService>((ref) {
  return const StableDemoService();
});

final generationServiceProvider = Provider<GenerationService>((ref) {
  final seedService = ref.watch(demoSeedServiceProvider);
  final schemaGuard = ref.watch(schemaGuardProvider);
  final toneGuard = ref.watch(toneGuardProvider);

  return GenerationService(
    seedService: seedService,
    schemaGuard: schemaGuard,
    toneGuard: toneGuard,
  );
});

final continuityServiceProvider = Provider<ContinuityService>((ref) {
  final seedService = ref.watch(demoSeedServiceProvider);
  return ContinuityService(seedService: seedService);
});