class AppSession {
  final String currentMood;
  final String currentSituation;
  final String selectedChoiceId;
  final String lastEpisodeTitle;
  final String activeHookSeed;

  const AppSession({
    required this.currentMood,
    required this.currentSituation,
    required this.selectedChoiceId,
    required this.lastEpisodeTitle,
    required this.activeHookSeed,
  });

  const AppSession.empty()
      : currentMood = '',
        currentSituation = '',
        selectedChoiceId = '',
        lastEpisodeTitle = '',
        activeHookSeed = '';

  AppSession copyWith({
    String? currentMood,
    String? currentSituation,
    String? selectedChoiceId,
    String? lastEpisodeTitle,
    String? activeHookSeed,
  }) {
    return AppSession(
      currentMood: currentMood ?? this.currentMood,
      currentSituation: currentSituation ?? this.currentSituation,
      selectedChoiceId: selectedChoiceId ?? this.selectedChoiceId,
      lastEpisodeTitle: lastEpisodeTitle ?? this.lastEpisodeTitle,
      activeHookSeed: activeHookSeed ?? this.activeHookSeed,
    );
  }
}