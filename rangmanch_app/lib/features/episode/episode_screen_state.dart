class EpisodeScreenState {
  final String selectedMood;
  final String currentSituation;
  final String selectedChoiceId;
  final bool isGenerating;

  const EpisodeScreenState({
    this.selectedMood = '',
    this.currentSituation = '',
    this.selectedChoiceId = '',
    this.isGenerating = false,
  });

  EpisodeScreenState copyWith({
    String? selectedMood,
    String? currentSituation,
    String? selectedChoiceId,
    bool? isGenerating,
  }) {
    return EpisodeScreenState(
      selectedMood: selectedMood ?? this.selectedMood,
      currentSituation: currentSituation ?? this.currentSituation,
      selectedChoiceId: selectedChoiceId ?? this.selectedChoiceId,
      isGenerating: isGenerating ?? this.isGenerating,
    );
  }
}