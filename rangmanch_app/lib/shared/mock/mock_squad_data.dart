import '../../core/models/squad_view_data.dart';

const mockSquad = SquadViewData(
  squadTitle: 'Court of Unnecessary Chaos',
  squadFrame:
      'A friend group where nobody is fully innocent and everyone believes they are helping.',
  memberRoles: [
    SquadMemberRoleViewData(
      memberLabel: 'Aarav',
      assignedRole: 'Chief Instigator',
    ),
    SquadMemberRoleViewData(
      memberLabel: 'Diya',
      assignedRole: 'Fake Peacemaker',
    ),
    SquadMemberRoleViewData(
      memberLabel: 'Kabir',
      assignedRole: 'Silent Plotter',
    ),
  ],
  groupDynamicSummary:
      'The plan failed, three opinions emerged, and one person is still acting like this was strategic.',
  verdictOrRanking:
      'Most likely to escalate a simple problem into a saga: Diya',
  socialPayoffLine:
      'This squad has never experienced one normal event without adding production value.',
  artifactSeed: 'chaos ranking',
  continuitySeed: 'verdict appeal pending',
);