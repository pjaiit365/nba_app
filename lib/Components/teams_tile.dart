import 'package:flutter/material.dart';
import 'package:nba_app/Screens/Team/team.dart';
import 'package:nba_app/constants.dart';

class TeamsTile extends StatelessWidget {
  final int index;
  final String team_abbreviation;
  final String team_name;
  final String team_logo;
  const TeamsTile(
      {Key? key,
      required this.team_abbreviation,
      required this.team_name,
      required this.team_logo,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Team(),
          ),
        );
        chosenTeamIndex = index;
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15.0, top: 5),
        child: Container(
          height: 95,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white, width: 1.5)),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(team_abbreviation),
                    subtitle: Text(team_name),
                  ),
                ),
                Image.asset(
                  team_logo,
                  height: 60,
                  width: 100,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
