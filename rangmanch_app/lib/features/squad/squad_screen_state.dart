class SquadScreenState {
  final List<String> members;
  final String selectedVibe;
  final bool isGenerating;

  const SquadScreenState({
    this.members = const [],
    this.selectedVibe = '',
    this.isGenerating = false,
  });

  SquadScreenState copyWith({
    List<String>? members,
    String? selectedVibe,
    bool? isGenerating,
  }) {
    return SquadScreenState(
      members: members ?? this.members,
      selectedVibe: selectedVibe ?? this.selectedVibe,
      isGenerating: isGenerating ?? this.isGenerating,
    );
  }
}