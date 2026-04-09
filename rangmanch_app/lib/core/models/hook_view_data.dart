class HookViewData {
  final String headline;
  final String hookType;
  final String hookLine;
  final String hookEnergy;
  final String returnReason;

  const HookViewData({
    required this.headline,
    required this.hookType,
    required this.hookLine,
    required this.hookEnergy,
    required this.returnReason,
  });
}

class ArchiveTraceViewData {
  final String title;
  final String subtitle;
  final String tag;

  const ArchiveTraceViewData({
    required this.title,
    required this.subtitle,
    required this.tag,
  });
}