import '../models/episode_view_data.dart';

const fallbackEpisode = EpisodeViewData(
  title: 'Tonight’s Unexpected Act',
  theme: 'Companion Fallback',
  setup:
      'Your moment was still strong enough for staging, so the universe simplified it into a cleaner dramatic frame.',
  castFrame:
      'You, one unstable situation, and a narrator determined not to waste the moment.',
  moodInterpretation: 'A readable amount of chaos with strong recovery potential.',
  dramaticFrame: 'A fast, compact, fallback-safe mini-episode.',
  choices: [
    EpisodeChoiceViewData(
      id: 'recover',
      label: 'Recover with style',
      flavor: 'Dramatic',
      expectedTone: 'Controlled comeback',
    ),
    EpisodeChoiceViewData(
      id: 'reframe',
      label: 'Reframe everything as intentional',
      flavor: 'Savvy',
      expectedTone: 'Comic recovery',
    ),
  ],
);

const fallbackEpisodeOutcome = EpisodeOutcomeViewData(
  headline: 'The act recovered without fully pretending to be calm.',
  summary:
      'You took a messy moment, trimmed the chaos, and turned it into a survivable scene.',
  commentary:
      'Not every act needs maximum drama. Some just need better framing.',
  resultTone: 'Fallback recovery',
  artifactSeed: 'Survivor of Contained Plot Drift',
  continuitySeed: 'a quieter sequel may still be pending',
);