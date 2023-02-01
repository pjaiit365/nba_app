import 'package:flutter/material.dart';

import '../../../Components/player_tile.dart';

class RosterTab extends StatelessWidget {
  const RosterTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 30,
        itemBuilder: (context, index) {
          return PlayerTile();
          // return PlayerTile(index: index);
        },
      ),
    );
  }
}
