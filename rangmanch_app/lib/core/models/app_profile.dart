class AppProfile {
  final String nickname;
  final String selectedVibe;
  final String selectedHumorStyle;
  final String selectedCompanionTone;

  const AppProfile({
    required this.nickname,
    required this.selectedVibe,
    required this.selectedHumorStyle,
    required this.selectedCompanionTone,
  });

  const AppProfile.empty()
      : nickname = '',
        selectedVibe = '',
        selectedHumorStyle = '',
        selectedCompanionTone = '';

  bool get hasIdentity => nickname.trim().isNotEmpty;

  AppProfile copyWith({
    String? nickname,
    String? selectedVibe,
    String? selectedHumorStyle,
    String? selectedCompanionTone,
  }) {
    return AppProfile(
      nickname: nickname ?? this.nickname,
      selectedVibe: selectedVibe ?? this.selectedVibe,
      selectedHumorStyle: selectedHumorStyle ?? this.selectedHumorStyle,
      selectedCompanionTone:
          selectedCompanionTone ?? this.selectedCompanionTone,
    );
  }
}