import 'package:flutter/material.dart';
import '../../../Components/additional_player_details.dart';
import '../../../Components/measurement_tile.dart';
import '../../../Components/player_details.dart';
import '../../../Components/player_team_affiliations.dart';
import '../../../Components/player_titles_won.dart';
import 'package:http/http.dart' as http;

Future getPlayerDetails() async {
  // final response = await Uri.http('authority');
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            PLayerDetails(
                playerName: 'LeBron James',
                position: 'Small Forward',
                team: 'LAL',
                active: 'Yes'),
            SizedBox(height: 25),
            AdditionalPlayerDetails(
                bdate: '1984-12-30',
                country: 'United States of America',
                proStartYear: '2003',
                proDuration: '18'),
            SizedBox(height: 25),
            MeasurementTile(
                heightFeet: '6',
                heightInches: '9',
                heightMeters: '2.06',
                weightPounds: '250',
                weightKilograms: '113.4'),
            SizedBox(height: 25),
            PlayerTeamAffiliations(
              collegeAffiliation: 'St. Vincent-St. Mary HS (OH)/USA',
            ),
            SizedBox(height: 25),
            PlayerTitlesWon(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
