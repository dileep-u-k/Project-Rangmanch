class EpisodeChoiceViewData {
  final String id;
  final String label;
  final String flavor;
  final String expectedTone;

  const EpisodeChoiceViewData({
    required this.id,
    required this.label,
    required this.flavor,
    required this.expectedTone,
  });
}

class EpisodeViewData {
  final String title;
  final String theme;
  final String setup;
  final String castFrame;
  final String moodInterpretation;
  final String dramaticFrame;
  final List<EpisodeChoiceViewData> choices;

  const EpisodeViewData({
    required this.title,
    required this.theme,
    required this.setup,
    required this.castFrame,
    required this.moodInterpretation,
    required this.dramaticFrame,
    required this.choices,
  });
}

class EpisodeOutcomeViewData {
  final String headline;
  final String summary;
  final String commentary;
  final String resultTone;
  final String artifactSeed;
  final String continuitySeed;

  const EpisodeOutcomeViewData({
    required this.headline,
    required this.summary,
    required this.commentary,
    required this.resultTone,
    required this.artifactSeed,
    required this.continuitySeed,
  });
}