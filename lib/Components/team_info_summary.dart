import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../constants.dart';
import '../models/specific_team_data.dart';

var jsonData;

class TeamInfoSummary extends StatelessWidget {
  TeamInfoSummary({super.key});

  List<SpecificTeamData> teams = [];

  Future getSpecificTeam() async {
    try {
      var response = await http.get(
          Uri.https('balldontlie.io', '/api/v1/teams/${chosenTeamIndex + 1}'));
      print(response.body);
      jsonData = jsonDecode(response.body);
      print(jsonData['id']);
    } on NoSuchMethodError catch (e) {
      print(e.toString());
      Text('No internet connection available.');
    }

    //   try {
    //     for (var eachTeam in jsonData['data']) {
    //       final specificTeam = SpecificTeamData(
    //           abbreviation: eachTeam['abbreviation'],
    //           location: eachTeam['city'],
    //           conference: eachTeam['conference'],
    //           division: eachTeam['division'],
    //           fullName: eachTeam['full_name']);
    //       teams.add(specificTeam);
    //       print(teams);
    //     }
    //   } on HttpException catch (e) {
    //     print(e.toString());
    //   }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 2),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(12),
          ),
          border: Border.all(color: Colors.white, width: 1.5),
        ),
        child: FutureBuilder(
          future: getSpecificTeam(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      jsonData['full_name'],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Helvetica'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abbreviation: ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Text(
                                  jsonData['abbreviation'],
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Location: ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  jsonData['city'],
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Titles Won: ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  '29',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Conference: ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  jsonData['conference'],
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Division: ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  jsonData['division'],
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, bottom: 10),
                        child: Image.asset(
                          teamLogo[chosenTeamIndex],
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return Center(
                child: CircularProgressIndicator(color: Colors.blueAccent),
              );
            }
          },
        ),
      ),
    );
  }
}
