import 'package:flutter/material.dart';
import 'package:nba_app/Components/player_details_heading_underline.dart';
import 'package:nba_app/Components/player_details_tile.dart';

class PLayerDetails extends StatelessWidget {
  const PLayerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PlayerDetailsHeading(heading: 'Player Details'),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    PlayerDetailsTile(title: 'Name', subtitle: 'LeBron James'),
                    PlayerDetailsTile(
                        title: 'Postion', subtitle: 'Power Forward'),
                    PlayerDetailsTile(
                        title: 'Team', subtitle: 'Los Angeles Lakers'),
                    PlayerDetailsTile(
                        title: 'Annual Salary', subtitle: '\$17.4 M'),
                    PlayerDetailsTile(title: 'Active', subtitle: 'Yes'),
                  ],
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 5, bottom: 10),
                  height: 130,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Colors.white, width: 2),
                    image: DecorationImage(
                      image: AssetImage('assets/player_pics/lebron.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PlayerDetailsHeading extends StatelessWidget {
  final String heading;
  const PlayerDetailsHeading({
    Key? key,
    required this.heading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      width: 155,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(6), topLeft: Radius.circular(6)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            heading,
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 3),
          PlayerDetailsHeadingUnderline(),
        ],
      ),
    );
  }
}
