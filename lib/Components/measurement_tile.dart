import 'package:flutter/material.dart';
import 'package:nba_app/Components/player_details.dart';

class MeasurementTile extends StatelessWidget {
  final String heightFeet;
  final String heightInches;
  final String heightMeters;
  final String weightPounds;
  final String weightKilograms;
  const MeasurementTile({
    Key? key,
    required this.heightFeet,
    required this.heightInches,
    required this.heightMeters,
    required this.weightPounds,
    required this.weightKilograms,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PlayerDetailsHeading(heading: 'Measurements'),
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
                left: 12.0, right: 12, top: 18, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Height',
                  style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                ),
                MeasurementRow(
                    title: 'In feet and inches: ',
                    measurement: heightFeet + "' " + heightInches + '"'),
                MeasurementRow(title: 'In meters: ', measurement: '2.06 m'),
                SizedBox(height: 18),
                Text(
                  'Weight',
                  style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                ),
                MeasurementRow(
                    title: 'In pounds: ', measurement: '$weightPounds lb'),
                MeasurementRow(
                    title: 'In kilograms: ',
                    measurement: '$weightKilograms kg'),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MeasurementRow extends StatelessWidget {
  final String title;
  final String measurement;
  const MeasurementRow({
    Key? key,
    required this.title,
    required this.measurement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 15),
          height: 7,
          width: 7,
          decoration:
              BoxDecoration(color: Colors.redAccent, shape: BoxShape.circle),
        ),
        SizedBox(width: 15),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              title + measurement,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
