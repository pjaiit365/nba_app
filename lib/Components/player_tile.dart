import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:nba_app/models/players.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../constants.dart';

List<PlayerData> allPlayer = [];

Future getPlayers() async {
  var response = await http.get(Uri.https('balldontlie.io', 'api/v1/players'));
  // print(response.body);

  try {
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      for (var eachPlayer in jsonData['data']) {
        final players = PlayerData(
          team_id: eachPlayer['team']['id'],
          player_id: eachPlayer['id'],
          firstName: eachPlayer['first_name'],
          lastName: eachPlayer['last_name'],
          position: eachPlayer['position'],
        );

        allPlayer.add(players);
      }

      // print(allPlayer.length);

      for (int i = 0; i < allPlayer.length; i++) {
        if (allPlayer[i].team_id == (chosenTeamIndex + 1)) {
          player.add(allPlayer[i]);
          print('${i + 1} players in list');
          print(player[i].team_id);
        }
      }
      print(player.length);
    } else {
      Center(
        child: Text('API Error. API system not responding, try again later.'),
      );
    }
  } on Error catch (e) {
    print('Error: $e');
  }
  print(player[3].player_id);
  print(player[3].team_id);
}

class PlayerTile extends StatelessWidget {
  final int index;
  const PlayerTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getPlayers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              player.isNotEmpty) {
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
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                          subtitle: player[index].position.isEmpty
                              ? Text(
                                  'N/A',
                                  style: TextStyle(
                                      fontSize: 13, fontFamily: 'Helvetica'),
                                )
                              : Text(
                                  player[index].position,
                                  style: TextStyle(
                                      fontSize: 13, fontFamily: 'Helvetica'),
                                ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
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
          }
          return Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 15),
            child: Shimmer(
              color: Colors.grey.shade500,
              duration: Duration(seconds: 3),
              interval: Duration(seconds: 1),
              direction: ShimmerDirection.fromLTRB(),
              child: Container(
                height: 85,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 1.5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 5.2),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey[300], shape: BoxShape.circle),
                        ),
                      ),
                      VerticalDivider(
                        thickness: 2.5,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: ListTile(
                          title: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 8.0, top: 10),
                            child: Container(
                              height: 12,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ),
                          subtitle: Container(
                            height: 12,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(3)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });

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
  }
}
