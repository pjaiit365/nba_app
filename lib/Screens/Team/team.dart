import 'package:flutter/material.dart';
import 'package:nba_app/Components/default_back_button.dart';
import 'package:nba_app/Screens/Team/Components/body.dart';
import 'package:nba_app/constants.dart';

class Team extends StatelessWidget {
  const Team({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DefaultBackButton(buttonColor: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Image.asset(
              teamLogo[chosenTeamIndex],
              height: 50,
              width: 50,
            ),
          ),
          //TODO: add web icon to visit team site
        ],
      ),
      body: Body(),
    );
  }
}
