import 'package:flutter/material.dart';

import '../../../Components/player_tile.dart';

class RosterTab extends StatelessWidget {
  const RosterTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        primary: false,
        shrinkWrap: true,
        itemCount: 25,
        itemBuilder: (context, index) {
          return PlayerTile(index: index);
        });
  }
}
