import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nba_app/constants.dart';
import 'package:nba_app/models/teams.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../Components/teams_tile.dart';
import '../../../models/players.dart';

List<TeamData> team = [];
// List<Data> searchResults = [];

Future getTeams() async {
  var response = await http.get(Uri.https('balldontlie.io', 'api/v1/teams'));
  print(response.body);
  try {
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      for (var eachTeam in jsonData['data']) {
        final teams = TeamData(
            abbreviation: eachTeam['abbreviation'],
            fullName: eachTeam['full_name'],
            conference: eachTeam['conference'],
            division: eachTeam['division'],
            titlesWon: 29,
            city: eachTeam['city']);
        team.add(teams);
      }
    } else {
      Center(
        child: Text('API Error. API system not responding, try again later.'),
      );
    }
  } on RangeError catch (e) {
    print('Error: $e');
  }
  // if (query != null) {
  //   searchResults = searchResults
  //       .where((element) =>
  //           element.fullName!.toLowerCase().contains(query.toLowerCase()))
  //       .toList();
  // }
}

class Body extends StatelessWidget {
  Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
      // child: ListView.builder(
      //   itemCount: 30,
      //   itemBuilder: (context, index) {
      //     return TeamsTile(
      //       index: 0,
      //       team_logo: 'assets/images/nba_logo.png',
      //       team_abbreviation: 'Abbv',
      //       team_name: 'Team Name',
      //     );
      //   },
      // )

      child: FutureBuilder(
        future: getTeams(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: 30,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return TeamsTile(
                  team_abbreviation: team[index].abbreviation,
                  team_name: team[index].fullName,
                  team_logo: teamLogo[index],
                  index: index,
                );
              },
            );
          } else {
            return ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0, top: 5),
                    child: Shimmer(
                      color: Colors.grey.shade500,
                      duration: Duration(seconds: 3),
                      direction: ShimmerDirection.fromLTRB(),
                      interval: Duration(seconds: 1),
                      child: Container(
                        height: 95,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                            border:
                                Border.all(color: Colors.white, width: 1.5)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ListTile(
                                  title: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 8.0, top: 10),
                                    child: Container(
                                      height: 12,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius:
                                              BorderRadius.circular(3)),
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
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      shape: BoxShape.circle),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ));
              },
            );
          }
        },
      ),
    );
  }
}
