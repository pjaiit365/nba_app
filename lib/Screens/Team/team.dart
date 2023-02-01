import 'package:flutter/material.dart';
import 'package:nba_app/Components/default_back_button.dart';
import 'package:nba_app/Screens/Team/Components/body.dart';
import 'package:nba_app/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Team extends StatefulWidget {
  const Team({Key? key}) : super(key: key);

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  Future<void> LaunchHomePage(String urlString) async {
    final Uri uri = Uri(scheme: 'https', host: 'nba.com', path: urlString);
    print(uri);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can't load homepage. Check your connection.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DefaultBackButton(buttonColor: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              LaunchHomePage(TeamHomepage[chosenTeamIndex]);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 22.0),
              child: Image.asset(
                'assets/icons/web_icon.png',
                height: 30,
                width: 30,
                color: kblue,
              ),
            ),
          ),
          //TODO: add web icon to visit team site
        ],
      ),
      body: Body(),
    );
  }
}
