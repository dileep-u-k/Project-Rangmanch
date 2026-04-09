class ArtifactShareService {
  const ArtifactShareService();

  String buildShareCaption({
    required String headline,
    required String subheadline,
    required String resultCore,
  }) {
    return '$headline — $subheadline\n$resultCore\n\nGenerated inside RANGMANCH.';
  }

  Future<void> mockSaveArtifact() async {
    await Future<void>.delayed(const Duration(milliseconds: 180));
  }

  Future<void> mockShareArtifact() async {
    await Future<void>.delayed(const Duration(milliseconds: 180));
  }
}