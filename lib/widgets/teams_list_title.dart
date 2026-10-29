import 'package:flutter/material.dart';
import '../models/clubs.dart'; 

  class TeamsListTitle extends StatelessWidget {

  final Club club;

  const TeamsListTitle({super.key, required this.club});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                club.logo,
                width: 116,
                height: 82,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return const SizedBox(
                    width: 116,
                    height: 82,
                    child: Center(child: CircularProgressIndicator()),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox(
                    width: 116,
                    height: 82,
                    child: Icon(Icons.broken_image_outlined),
                  );
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    club.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Time: ${club.teams.map((p) => p.label).join(', ')}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.people, size: 18, color: Color.fromARGB(255, 255, 255, 255)),
                      const SizedBox(width: 4),
                      Text(club.fans),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
