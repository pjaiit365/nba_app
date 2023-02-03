import 'package:flutter/material.dart';

import '../Components/teams_tile.dart';
import '../Screens/Home/Components/body.dart';
import '../constants.dart';

class SearchTeams extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios_rounded),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
      child: FutureBuilder(
        future: getTeams(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: team.length,
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
            return Center(child: CircularProgressIndicator(color: kblue));
          }
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text(
        'Team search results...',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
