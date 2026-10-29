import 'package:flutter/material.dart';
import '../data/club_data.dart';
import '../models/teams.dart';
import '../models/clubs.dart';
import '../widgets/teams_list_title.dart';
import '../widgets/teams_selector.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Teams? selectedPlatform;

  List<Club> get filteredClubs {
    if (selectedPlatform == null) return clubs;

    return clubs
        .where((club) => club.teams.contains(selectedPlatform))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final visibleClubs = filteredClubs;

    return Scaffold(
      appBar: AppBar(title: const Text('Teams Hub')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Times',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            PlatformSelector(
              platforms: Teams.values,
              selectedPlatform: selectedPlatform,
              onPlatformSelected: (platform) {
                setState(() {
                  selectedPlatform = platform;
                });
              },
            ),
            const SizedBox(height: 16),
            Text(
              'Clubes (${visibleClubs.length})',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: visibleClubs.isEmpty
                  ? const Center(child: Text('Nenhum time encontrado.'))
                  : ListView.builder(
                      itemCount: visibleClubs.length,
                      itemBuilder: (context, index) {
                        return TeamsListTitle(club: visibleClubs[index]);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
