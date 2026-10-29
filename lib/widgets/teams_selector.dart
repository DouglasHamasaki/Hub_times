import 'package:flutter/material.dart';
import '../models/teams.dart';

class PlatformSelector extends StatelessWidget {
  final List<Teams> platforms;
  final Teams? selectedPlatform;
  final ValueChanged<Teams?> onPlatformSelected;

  const PlatformSelector({
    super.key,
    required this.platforms,
    required this.selectedPlatform,
    required this.onPlatformSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: platforms.length + 1,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          if (index == 0) {
            return ChoiceChip(
              label: const Text('Todas'),
              selected: selectedPlatform == null,
              onSelected: (_) => onPlatformSelected(null),
            );
          }

          final platform = platforms[index - 1];
          return ChoiceChip(
            label: Text(platform.label),
            selected: selectedPlatform == platform,
            onSelected: (_) => onPlatformSelected(platform),
          );
        },
      ),
    );
  }
}
