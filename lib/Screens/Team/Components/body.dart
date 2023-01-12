// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:nba_app/Screens/Team/Components/roster_tab.dart';
import 'package:nba_app/Screens/Team/Components/titles_tab.dart';
import '../../../Components/team_info_summary.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool rosterTabSelected = false;
  bool titlesTabSelected = false;
  bool historyTabSelected = false;

  @override
  void initState() {
    rosterTabSelected = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TeamInfoSummary(),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  rosterTabSelected = !rosterTabSelected;
                  if (rosterTabSelected == true) {
                    historyTabSelected = false;
                    titlesTabSelected = false;
                  }
                  if (titlesTabSelected == false &&
                      historyTabSelected == false) {
                    rosterTabSelected = true;
                  }
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Roster',
                    style: TextStyle(
                        color: rosterTabSelected ? Colors.black : Colors.grey,
                        fontSize: rosterTabSelected ? 17 : 16),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: rosterTabSelected
                        ? Container(
                            height: 4,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(5)),
                          )
                        : null,
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  titlesTabSelected = !titlesTabSelected;
                  if (titlesTabSelected == true) {
                    historyTabSelected = false;
                    rosterTabSelected = false;
                  }
                  if (rosterTabSelected == false &&
                      historyTabSelected == false) {
                    titlesTabSelected = true;
                  }
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Titles Won',
                    style: TextStyle(
                        color: titlesTabSelected ? Colors.black : Colors.grey,
                        fontSize: titlesTabSelected ? 17 : 16),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0),
                    child: titlesTabSelected
                        ? Container(
                            height: 4,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(5)),
                          )
                        : null,
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  historyTabSelected = !historyTabSelected;
                  if (historyTabSelected == true) {
                    rosterTabSelected = false;
                    titlesTabSelected = false;
                  }
                  if (titlesTabSelected == false &&
                      rosterTabSelected == false) {
                    historyTabSelected = true;
                  }
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'History',
                    style: TextStyle(
                        color: historyTabSelected ? Colors.black : Colors.grey,
                        fontSize: historyTabSelected ? 17 : 16),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: historyTabSelected
                        ? Container(
                            height: 4,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(5)),
                          )
                        : null,
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        TitlesWonTab(),
        // if (rosterTabSelected == true) RosterTab(),
        // if (titlesTabSelected == true) TitlesWonTab(),
      ],
      //team history
      //titles won
      //list of players
      //current league standing
      //current coach
      // pic | number | player name | expanded position
    );
  }
}
