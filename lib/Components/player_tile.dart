import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nba_app/models/players.dart';

import '../constants.dart';

class PlayerTile extends StatelessWidget {
  final int index;
  const PlayerTile({
    Key? key,
    this.index = 0,
    //change this.index to required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PlayerData> player = [];

    Future getPlayers() async {
      var response =
          await http.get(Uri.https('balldontlie.io', 'api/v1/players'));
      // print(response.body);
      var jsonData = jsonDecode(response.body);

      for (var eachPlayer in jsonData['data']) {
        final players = PlayerData(
          team_id: eachPlayer['team']['id'],
          player_id: eachPlayer['id'],
          firstName: eachPlayer['first_name'],
          lastName: eachPlayer['last_name'],
          position: eachPlayer['position'],
        );
        if (eachPlayer['team']['id'] == (chosenTeamIndex + 1)) {
          player.add(players);
          print(eachPlayer['team']['id']);
        }
      }
    }

//dummy Widget
    // return Padding(
    //   padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 15),
    //   child: Container(
    //     height: 85,
    //     decoration: BoxDecoration(
    //         color: Colors.grey[300],
    //         borderRadius: BorderRadius.circular(10),
    //         border: Border.all(color: Colors.white, width: 1.5)),
    //     child: Padding(
    //       padding: const EdgeInsets.only(left: 4.0),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: [
    //           Image.asset(
    //             'assets/images/nba_logo.png',
    //             height: 60,
    //             width: 70,
    //           ),
    //           VerticalDivider(
    //             thickness: 3,
    //             color: Colors.white,
    //           ),
    //           Expanded(
    //             child: ListTile(
    //               title: Text('Lebron James'),
    //               subtitle: Padding(
    //                 padding: const EdgeInsets.only(left: 10.0),
    //                 child: Text(
    //                   'Power Forward',
    //                   style: TextStyle(fontSize: 13, fontFamily: 'Helvetica'),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.only(right: 11.0),
    //             child: Text(
    //               '#' + ' 23',
    //               style: TextStyle(
    //                   fontSize: 27, color: kblue, fontWeight: FontWeight.bold),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );

    return FutureBuilder(
        future: getPlayers(),
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 15),
            child: Container(
              height: 85,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 1.5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/nba_logo.png',
                      height: 60,
                      width: 70,
                    ),
                    VerticalDivider(
                      thickness: 3,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          player[index].firstName +
                              ' ' +
                              player[index].lastName,
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            player[index].position,
                            style: TextStyle(
                                fontSize: 13, fontFamily: 'Helvetica'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 11.0),
                      child: Text(
                        '#' + ' 23',
                        style: TextStyle(
                            fontSize: 27,
                            color: kblue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
