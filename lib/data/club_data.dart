import '../models/clubs.dart';
import '../models/teams.dart';

const clubs = <Club>[

  Club(
    name: 'Corinthians',
    teams: [Teams.corinthians], 
    logo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqeXuIHYO-ZSWPvb2Ln_T1ICM7sQpMKNkraYQuVp400Q&s=10',
    state: 'São Paulo',
    fans: '1.000.000.000,00'
  ),

  Club(
    name: 'Palmeiras',
    teams: [Teams.palmeiras],
    logo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzJndERjXilDMxg9Y87mxS0cmjLWWm6fuoO-tynAttbw&s=10',
    state: 'São Paulo',
    fans: '1.000'
  ),

  Club(
    name: 'Santos',
    teams: [Teams.santos],
    logo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4EtITqIhZhxUmz_48BLo5O4OqBE42zKL2DTIeAYRtog&s=10',
    state: 'São Paulo',
    fans: '500'
  ),

  Club(
    name: 'São Paulo',
    teams: [Teams.saoPaulo],
    logo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT30fvgieE1tw0VH_babn8lQnRbUvReIj6xuCsTkr0-Jg&s=10',
    state: 'São Paulo',
    fans: '500',
  )

];