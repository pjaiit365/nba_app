class PlayerData {
  final int player_id;
  final String firstName;
  final String lastName;
  final String position;
  final int team_id;

  const PlayerData({
    required this.player_id,
    required this.team_id,
    required this.firstName,
    required this.lastName,
    required this.position,
  });
}
