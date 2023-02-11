import 'package:flutter/material.dart';
import '../../../Components/measurement_tile.dart';
import '../../../Components/player_details.dart';
import '../../../Components/player_team_affiliations.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            PLayerDetails(),
            SizedBox(height: 20),
            MeasurementTile(),
            SizedBox(height: 20),
            PlayerTeamAffiliations(),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                PlayerDetailsHeading(heading: 'Titles Won'),
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
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 6, top: 18, bottom: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'NBA Teams',
                          style:
                              TextStyle(fontSize: 18, color: Colors.blueAccent),
                        ),
                        SizedBox(height: 5),
                        MeasurementRow(
                            title: 'Play-off Championship Titles: ',
                            measurement: '4'),
                        MeasurementRow(
                            title: 'Conference Titles: ', measurement: '7'),
                        MeasurementRow(
                            title: 'Division Titles: ', measurement: '9'),
                        SizedBox(height: 20),
                        Text(
                          'College',
                          style:
                              TextStyle(fontSize: 18, color: Colors.blueAccent),
                        ),
                        SizedBox(height: 5),
                        MeasurementRow(
                            title: 'Ohio State Championships: ',
                            measurement: '3'),
                        MeasurementRow(
                            title: 'High School Player of the Year: ',
                            measurement: '3'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
