class SquadMemberRoleViewData {
  final String memberLabel;
  final String assignedRole;

  const SquadMemberRoleViewData({
    required this.memberLabel,
    required this.assignedRole,
  });
}

class SquadViewData {
  final String squadTitle;
  final String squadFrame;
  final List<SquadMemberRoleViewData> memberRoles;
  final String groupDynamicSummary;
  final String verdictOrRanking;
  final String socialPayoffLine;
  final String artifactSeed;
  final String continuitySeed;

  const SquadViewData({
    required this.squadTitle,
    required this.squadFrame,
    required this.memberRoles,
    required this.groupDynamicSummary,
    required this.verdictOrRanking,
    required this.socialPayoffLine,
    required this.artifactSeed,
    required this.continuitySeed,
  });
}