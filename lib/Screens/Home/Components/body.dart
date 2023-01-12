import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nba_app/constants.dart';
import 'package:nba_app/models/teams.dart';

import '../../../Components/teams_tile.dart';

class Body extends StatelessWidget {
  Body({super.key});

  List<TeamData> team = [];

  Future getTeams() async {
    var response = await http.get(Uri.https('balldontlie.io', 'api/v1/teams'));
    var jsonData = jsonDecode(response.body);
    print(response.body);

    for (var eachTeam in jsonData['data']) {
      final teams = TeamData(
          abbreviation: eachTeam['abbreviation'],
          fullName: eachTeam['full_name']);
      team.add(teams);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
        child: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) {
            return TeamsTile(
              index: 0,
              team_logo: 'assets/images/nba_logo.png',
              team_abbreviation: 'Abbv',
              team_name: 'Team Name',
            );
          },
        )

        //   child: FutureBuilder(
        //     future: getTeams(),
        //     builder: (context, snapshot) {
        //       if (snapshot.connectionState == ConnectionState.done) {
        //         return ListView.builder(
        //           itemCount: team.length,
        //           physics: BouncingScrollPhysics(),
        //           itemBuilder: (context, index) {
        //             return TeamsTile(
        //               team_abbreviation: team[index].abbreviation,
        //               team_name: team[index].fullName,
        //               team_logo: teamLogo[index],
        //               index: index,
        //             );
        //           },
        //         );
        //       } else {
        //         return Center(child: CircularProgressIndicator(color: kblue));
        //       }
        //     },
        //   ),
        );
  }
}
