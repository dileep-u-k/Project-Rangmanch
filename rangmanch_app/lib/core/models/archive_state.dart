class ArchiveState {
  final String lastEpisodeTitle;
  final String lastArtifactLabel;
  final String activeHookLine;

  const ArchiveState({
    required this.lastEpisodeTitle,
    required this.lastArtifactLabel,
    required this.activeHookLine,
  });

  const ArchiveState.empty()
      : lastEpisodeTitle = '',
        lastArtifactLabel = '',
        activeHookLine = '';

  bool get hasEpisode => lastEpisodeTitle.trim().isNotEmpty;
  bool get hasArtifact => lastArtifactLabel.trim().isNotEmpty;
  bool get hasHook => activeHookLine.trim().isNotEmpty;
}