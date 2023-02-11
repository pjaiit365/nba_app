import 'package:flutter/material.dart';
import 'package:nba_app/Components/player_details.dart';
import 'package:nba_app/Components/player_team_list.dart';

import '../constants.dart';
import 'measurement_tile.dart';

class PlayerTeamAffiliations extends StatelessWidget {
  const PlayerTeamAffiliations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PlayerDetailsHeading(heading: 'Teams'),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12.0, right: 6, top: 18, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'NBA Teams',
                  style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PlayerTeamsList(
                        heading: 'Year',
                        listLength: playerTeamYears.length,
                        listTitle: playerTeamYears),
                    PlayerTeamsList(
                        heading: 'Team',
                        listLength: playerTeamsPlayed.length,
                        listTitle: playerTeamsPlayed),
                    PlayerTeamsList(
                        heading: 'Number',
                        listLength: playerTeamNumbers.length,
                        listTitle: playerTeamNumbers),
                    PlayerTeamsList(
                        heading: 'Position',
                        listLength: playerTeamPosition.length,
                        listTitle: playerTeamPosition),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'College / High School',
                  style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                ),
                MeasurementRow(
                    title: 'Affiliation: ',
                    measurement: 'St. Vincent-St. Mary HS (OH)/USA'),
                MeasurementRow(title: 'Location: ', measurement: 'Akron, Ohio'),
                MeasurementRow(
                    title: 'Titles Won: ',
                    measurement: '3 Ohio State Championships'),
                MeasurementRow(title: 'Graduating Year: ', measurement: '2003'),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
