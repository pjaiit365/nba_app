import 'package:flutter/material.dart';
import 'package:nba_app/Components/player_details.dart';

import 'measurement_tile.dart';

class AdditionalPlayerDetails extends StatelessWidget {
  final String bdate;
  final String country;
  final String proStartYear;
  final String proDuration;
  const AdditionalPlayerDetails({
    Key? key,
    required this.bdate,
    required this.country,
    required this.proStartYear,
    required this.proDuration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PlayerDetailsHeading(heading: 'Additional Info.'),
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
                  'Other Details',
                  style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                ),
                SizedBox(height: 5),
                MeasurementRow(title: 'Birth Date: ', measurement: bdate),
                MeasurementRow(title: 'Birth Country: ', measurement: country),
                MeasurementRow(
                    title: 'NBA Pro Year: ', measurement: proStartYear),
                MeasurementRow(
                    title: 'NBA Pro Duration: ', measurement: proDuration),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
