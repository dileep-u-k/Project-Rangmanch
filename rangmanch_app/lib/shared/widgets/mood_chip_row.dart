import 'package:flutter/material.dart';

class MoodChipRow extends StatelessWidget {
  final List<String> moods;
  final String? selectedMood;
  final ValueChanged<String> onMoodSelected;

  const MoodChipRow({
    super.key,
    required this.moods,
    required this.selectedMood,
    required this.onMoodSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: moods.map((mood) {
        final isSelected = selectedMood == mood;
        return ChoiceChip(
          label: Text(mood),
          selected: isSelected,
          onSelected: (_) => onMoodSelected(mood),
        );
      }).toList(),
    );
  }
}