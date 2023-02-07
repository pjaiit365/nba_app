import 'package:flutter/material.dart';

import 'models/players.dart';

Color kblue = Color(0xff0761AA);
Color kred = Color(0xffD73247);

List<String> teamLogo = [
  'assets/logos/hawks.png',
  'assets/logos/celtics.png',
  'assets/logos/nets.png',
  'assets/logos/hornets.png',
  'assets/logos/bulls.png',
  'assets/logos/cavaliers.png',
  'assets/logos/mavericks.png',
  'assets/logos/nuggets.png',
  'assets/logos/pistons.png',
  'assets/logos/warriors.png',
  'assets/logos/rockets.png',
  'assets/logos/pacers.png',
  'assets/logos/clippers.png',
  'assets/logos/lakers.png',
  'assets/logos/grizzlies.png',
  'assets/logos/heat.png',
  'assets/logos/bucks.png',
  'assets/logos/timberwolves.png',
  'assets/logos/pelicans.png',
  'assets/logos/knicks.png',
  'assets/logos/thunder.png',
  'assets/logos/magic.png',
  'assets/logos/76ers.png',
  'assets/logos/suns.png',
  'assets/logos/trail_blazers.png',
  'assets/logos/kings.png',
  'assets/logos/spurs.png',
  'assets/logos/raptors.png',
  'assets/logos/jazz.png',
  'assets/logos/wizards.png',
];

List<String> TeamHomepage = [
  'hawks',
  'celtics',
  'nets',
  'hornets',
  'bulls',
  'cavaliers',
  'mavericks',
  'nuggets',
  'pistons',
  'warriors',
  'rockets',
  'pacers',
  'clippers',
  'lakers',
  'grizzlies',
  'heat',
  'bucks',
  'timberwolves',
  'pelicans',
  'knicks',
  'thunder',
  'magic',
  '76ers',
  'suns',
  'trail_blazers',
  'kings',
  'spurs',
  'raptors',
  'jazz',
  'wizards',
];

late int chosenTeamIndex;

List<String> finalsYearList = [
  '1992',
  '1997',
  '2004',
  '2012',
  '2015',
  '2016',
  '2021'
];
List<String> conferenceYearList = [
  '1992',
  '1997',
  '2004',
  '2006',
  '2007',
  '2012',
  '2015',
  '2016',
  '2017',
  '2021',
];

List<String> teamNames = [
  'Atlanta Hawks (1968 - Present)',
  'St. Louis Hawks (1955 - 1968)',
  'Milwaukee Hawks (1951 - 1955)',
  'Tri-Cities BlackHawks (1946 - 1951)'
];

List<String> teamLeagueHistory = [
  '1949 - Present (National Basketball Association)',
  '1946 - 1949 (National Basketball League)'
];
List<String> teamArena = [
  '2019 - Present (State Farm Arena) ',
  '1999 - 2019 (Phillips Arena)',
  '1997 -1999 (Georgia Dome & Alexander Memorial Coliseum)',
  '1972 - 1997 (The Omni)',
  '1968 - 1972 (Alexander Memorial Coliseum)'
];
List<String> teamOwner = [
  '2015 - Present (Tony Ressler)',
  '2004 - 2015 (Atlanta Spirit, LLC)',
  '1977 - 2004 (Ted Turner / Turner Broadcasting Studio)',
  '1968 - 1976 (Tom Cousins / Cousins Corp. / Carl Sanders)',
  '1946 - 1968 (Ben Kerner)'
];
List<String> allTimeGreatsName = [
  'Dominique Wilkins',
  'Pete Maravich',
  'Trae Young',
  'Dikembe Mutombo',
  'Spud Webb',
  'Vince Carter',
  'Lou Hudson',
  'Tree Rollins'
];
List<int> teamRetiredNumbers = [9, 21, 23, 44, 55, 59];
List<String> teamRetiredNames = [
  'Bob Petit',
  'Dominique Wilkins',
  'Lou Hudson ',
  'Pete Maravich',
  'Dikembe Mutombo',
  'Kasim Reed'
];

List<String> teamFounder = ['Mr. Robert Owens', 'Founded the team in 1946'];

List<String> allTimeGreatsImage = [
  'assets/images/nba_logo.png',
  'assets/images/nba_logo.png',
  'assets/images/nba_logo.png',
  'assets/images/nba_logo.png',
  'assets/images/nba_logo.png',
  'assets/images/nba_logo.png',
  'assets/images/nba_logo.png',
  'assets/images/nba_logo.png'
];

final Color greyDefault = Color(0xFFe0e0e0);

bool isAllTimeGreatsClicked = false;
bool isRetiredNumberClicked = false;

List<PlayerData> player = [];

bool isSelected = true;
bool isSelected2 = false;
bool isSelected3 = false;

int activeIndex = 0;

List<String> teamCarousel = [
  'assets/team_pics/hawks.jpg',
  'assets/team_pics/hawks.jpg',
  'assets/team_pics/hawks.jpg',
];
