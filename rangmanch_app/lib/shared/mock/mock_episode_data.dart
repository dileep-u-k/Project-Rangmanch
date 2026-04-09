import '../../core/models/episode_view_data.dart';

const mockEpisode = EpisodeViewData(
  title: 'The Assignment Meltdown Chronicles',
  theme: 'Chaos Comedy',
  setup:
      'You were aiming for productive. The universe chose confusion instead, and now the night has clear act structure.',
  castFrame:
      'You, one disappearing teammate, unfinished work, and a narrator who has seen this pattern before.',
  moodInterpretation: 'Frustrated, alert, and one good joke away from survival.',
  dramaticFrame: 'Late-stage academic disaster turned mini-drama.',
  choices: [
    EpisodeChoiceViewData(
      id: 'hero',
      label: 'Become the overdramatic hero',
      flavor: 'Dramatic',
      expectedTone: 'Stylish chaos',
    ),
    EpisodeChoiceViewData(
      id: 'courtroom',
      label: 'Expose the chaos like a courtroom witness',
      flavor: 'Savvy',
      expectedTone: 'Sharp reveal',
    ),
    EpisodeChoiceViewData(
      id: 'planned',
      label: 'Pretend this entire arc was strategic',
      flavor: 'Absurdist',
      expectedTone: 'Comic recovery',
    ),
  ],
);

const mockEpisodeOutcome = EpisodeOutcomeViewData(
  headline: 'Verdict: you survived, but not elegantly.',
  summary:
      'You turned preventable confusion into a performance piece and somehow left with your dignity mostly intact.',
  commentary:
      'I would not call this calm. I would call it cinematically salvageable.',
  resultTone: 'Comic victory',
  artifactSeed: 'Chief Architect of Preventable Drama',
  continuitySeed: 'aftermath review pending tomorrow',
);