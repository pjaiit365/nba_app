import 'package:flutter/material.dart';

import '../../../Components/player_tile.dart';
import '../../../constants.dart';

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
        itemCount: 15,
        itemBuilder: (context, index) {
          return PlayerTile(index: index);
        });
  }
}
