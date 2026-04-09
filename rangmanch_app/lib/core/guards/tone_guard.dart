import '../models/episode_view_data.dart';
import '../utils/strings.dart';

class ToneGuard {
  const ToneGuard();

  EpisodeViewData normalizeEpisode(EpisodeViewData data) {
    return EpisodeViewData(
      title: fallbackText(data.title, 'Untitled Act'),
      theme: fallbackText(data.theme, 'RANGMANCH Episode'),
      setup: fallbackText(
        data.setup,
        'A moment strong enough to become staged entertainment.',
      ),
      castFrame: fallbackText(
        data.castFrame,
        'You and the current situation are now officially in the cast.',
      ),
      moodInterpretation: fallbackText(
        data.moodInterpretation,
        'The mood has enough tension to support a clean act.',
      ),
      dramaticFrame: fallbackText(
        data.dramaticFrame,
        'A compact dramatic interpretation is now active.',
      ),
      choices: data.choices
          .map(
            (choice) => EpisodeChoiceViewData(
              id: fallbackText(choice.id, 'choice'),
              label: fallbackText(choice.label, 'Take the next act'),
              flavor: fallbackText(choice.flavor, 'Dramatic'),
              expectedTone: fallbackText(
                choice.expectedTone,
                'Companion-guided outcome',
              ),
            ),
          )
          .toList(),
    );
  }

  EpisodeOutcomeViewData normalizeEpisodeOutcome(EpisodeOutcomeViewData data) {
    return EpisodeOutcomeViewData(
      headline: fallbackText(data.headline, 'The act has landed.'),
      summary: fallbackText(
        data.summary,
        'The moment resolved into a readable outcome.',
      ),
      commentary: fallbackText(
        data.commentary,
        'The companion has chosen to frame this generously.',
      ),
      resultTone: fallbackText(data.resultTone, 'Companion Outcome'),
      artifactSeed: fallbackText(data.artifactSeed, 'Portable result pending'),
      continuitySeed: fallbackText(data.continuitySeed, 'next act available'),
    );
  }
}