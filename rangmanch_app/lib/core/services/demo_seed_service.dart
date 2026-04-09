import '../models/artifact_view_data.dart';
import '../models/episode_view_data.dart';
import '../models/hook_view_data.dart';
import '../models/squad_view_data.dart';
import '../utils/strings.dart';
import '../../shared/mock/mock_artifact_data.dart';
import '../../shared/mock/mock_episode_data.dart';
import '../../shared/mock/mock_hook_data.dart';
import '../../shared/mock/mock_squad_data.dart';

class DemoSeedService {
  const DemoSeedService();

  EpisodeViewData getEpisode({
    required String mood,
    required String situation,
  }) {
    final cleanedMood = fallbackText(mood, 'Charged');
    final cleanedSituation = fallbackText(situation, 'Routine drift');

    final episodeTitles = [
      'The $cleanedSituation Turnaround Arc',
      'Operation $cleanedMood: Act One',
      '$cleanedSituation vs. Your Timeline',
      'The $cleanedMood Plot Twist Protocol',
    ];

    final themes = [
      '$cleanedMood Comedy',
      'Narrative Recovery',
      'Social Chaos',
      'Momentum Drama',
    ];

    final index = _stableIndex('$cleanedMood|$cleanedSituation', episodeTitles.length);

    return EpisodeViewData(
      title: episodeTitles[index],
      theme: themes[index],
      setup:
          'You arrived with $cleanedMood energy. The moment "$cleanedSituation" now needs act structure before it spreads.',
      castFrame:
          'You, one unpredictable ally, one silent observer, and a companion narrator who calls patterns early.',
      moodInterpretation:
          '$cleanedMood energy detected with a strong chance of entertainment-grade escalation.',
      dramaticFrame:
          'A real-life moment reframed into a high-agency interactive scene.',
      choices: [
        EpisodeChoiceViewData(
          id: 'spotlight',
          label: 'Take the spotlight and steer the story',
          flavor: 'Lead',
          expectedTone: 'Confident chaos',
        ),
        EpisodeChoiceViewData(
          id: 'reveal',
          label: 'Reveal hidden context before others do',
          flavor: 'Sharp',
          expectedTone: 'Clever control',
        ),
        EpisodeChoiceViewData(
          id: 'flip',
          label: 'Flip the mood and improvise a comeback',
          flavor: 'Wildcard',
          expectedTone: 'Stylish recovery',
        ),
      ],
    );
  }

  EpisodeOutcomeViewData getEpisodeOutcome({
    required String selectedChoiceId,
  }) {
    final choiceId = fallbackText(selectedChoiceId, 'spotlight');
    final outcomeMap = {
      'spotlight': const EpisodeOutcomeViewData(
        headline: 'Outcome: you controlled the frame before the frame controlled you.',
        summary:
            'You went first, defined the mood, and converted confusion into a watchable arc with momentum.',
        commentary:
            'Early leadership plus timing. Chaotic, yes. Random, no.',
        resultTone: 'Commanding comic win',
        artifactSeed: 'Director of Timely Chaos',
        continuitySeed: 'your next act now expects bigger stakes',
      ),
      'reveal': const EpisodeOutcomeViewData(
        headline: 'Outcome: hidden context changed the entire scene.',
        summary:
            'You surfaced what others missed and turned reactive noise into a strategic narrative.',
        commentary:
            'Evidence before emotion. Strong choice for long-arc credibility.',
        resultTone: 'Strategic reveal',
        artifactSeed: 'Narrative Intelligence Lead',
        continuitySeed: 'someone will challenge this version tomorrow',
      ),
      'flip': const EpisodeOutcomeViewData(
        headline: 'Outcome: the vibe flipped and the room followed.',
        summary:
            'You redirected pressure with humor and timing, then walked out with a cleaner ending than expected.',
        commentary:
            'Improvised tone-switch. Risky, but excellent for replay value.',
        resultTone: 'Wildcard recovery',
        artifactSeed: 'Momentum Flip Specialist',
        continuitySeed: 'the sequel opens with unfinished reactions',
      ),
    };

    return outcomeMap[choiceId] ?? mockEpisodeOutcome;
  }

  SquadViewData getSquad({
    required List<String> members,
    required String vibe,
  }) {
    final cleanedMembers = members
        .map(trimmedOrEmpty)
        .where((member) => member.isNotEmpty)
        .toList();

    final cast = cleanedMembers.isEmpty
        ? mockSquad.memberRoles.map((role) => role.memberLabel).toList()
        : cleanedMembers;

    final roles = [
      'Chief Instigator',
      'Timing Economist',
      'Plot Whisperer',
      'Escalation Specialist',
      'Damage Control Artist',
    ];

    final roleAssignments = <SquadMemberRoleViewData>[];
    for (var i = 0; i < cast.length; i++) {
      final roleIndex = _stableIndex('${cast[i]}|$vibe|$i', roles.length);
      roleAssignments.add(
        SquadMemberRoleViewData(
          memberLabel: cast[i],
          assignedRole: roles[roleIndex],
        ),
      );
    }

    final topMember = roleAssignments.isEmpty
        ? 'the squad'
        : roleAssignments[_stableIndex(vibe, roleAssignments.length)].memberLabel;

    return SquadViewData(
      squadTitle: '$vibe Storyline Council',
      squadFrame:
          'This group enters with opinions, exits with lore, and keeps one unresolved decision for the next act.',
      memberRoles: roleAssignments,
      groupDynamicSummary:
          '$vibe energy made every micro-decision feel like a season event.',
      verdictOrRanking:
          'Most likely to trigger the next arc on purpose: $topMember',
      socialPayoffLine:
          'This squad is now one screenshot away from group-chat legend status.',
      artifactSeed: '$vibe ranking board',
      continuitySeed: 'squad rematch unlocked after reactions settle',
    );
  }

  ArtifactViewData getArtifact({
    String? episodeTitle,
    String? artifactLabel,
  }) {
    final cleanedEpisode = trimmedOrEmpty(episodeTitle);
    final cleanedLabel = trimmedOrEmpty(artifactLabel);

    return ArtifactViewData(
      artifactType: mockArtifact.artifactType,
      headline: cleanedLabel.isEmpty ? mockArtifact.headline : cleanedLabel,
      subheadline: cleanedEpisode.isEmpty ? mockArtifact.subheadline : cleanedEpisode,
      resultCore: mockArtifact.resultCore,
      caption: cleanedLabel.isEmpty
          ? mockArtifact.caption
          : 'Portable proof that "$cleanedLabel" became canon in your universe.',
      styleTag: mockArtifact.styleTag,
    );
  }

  HookViewData getHook({
    String? savedHook,
    String? episodeTitle,
  }) {
    final cleanedHook = trimmedOrEmpty(savedHook);
    final cleanedEpisode = trimmedOrEmpty(episodeTitle);

    final episodeLabel = cleanedEpisode.isEmpty ? 'your previous act' : cleanedEpisode;
    final hookLine = cleanedHook.isEmpty
        ? mockHook.hookLine
        : 'After "$episodeLabel", next-act trigger: $cleanedHook.';

    return HookViewData(
      headline: mockHook.headline,
      hookType: mockHook.hookType,
      hookLine: hookLine,
      hookEnergy: mockHook.hookEnergy,
      returnReason: mockHook.returnReason,
    );
  }

  List<ArchiveTraceViewData> getArchiveTraces() => mockArchiveTraces;

  int _stableIndex(String key, int max) {
    if (max <= 0) {
      return 0;
    }

    var hash = 0;
    for (final codeUnit in key.codeUnits) {
      hash = ((hash << 5) - hash) + codeUnit;
      hash &= 0x7fffffff;
    }

    return hash % max;
  }
}
