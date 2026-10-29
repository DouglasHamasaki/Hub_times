import 'teams.dart';

class Club{
  final String name;
  final List<Teams> teams;
  final String logo; 
  final String state; 
  final String fans;
  

  const Club({
    required this.name,
    required this.teams,
    required this.logo,
    required this.state,
    required this.fans
  });
}
