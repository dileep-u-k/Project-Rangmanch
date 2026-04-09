class OnboardingState {
  final String nickname;
  final String? selectedVibe;
  final String? selectedHumorStyle;
  final String? selectedCompanionTone;
  final bool isSaving;

  const OnboardingState({
    this.nickname = '',
    this.selectedVibe,
    this.selectedHumorStyle,
    this.selectedCompanionTone,
    this.isSaving = false,
  });

  OnboardingState copyWith({
    String? nickname,
    String? selectedVibe,
    String? selectedHumorStyle,
    String? selectedCompanionTone,
    bool? isSaving,
  }) {
    return OnboardingState(
      nickname: nickname ?? this.nickname,
      selectedVibe: selectedVibe ?? this.selectedVibe,
      selectedHumorStyle: selectedHumorStyle ?? this.selectedHumorStyle,
      selectedCompanionTone:
          selectedCompanionTone ?? this.selectedCompanionTone,
      isSaving: isSaving ?? this.isSaving,
    );
  }
}