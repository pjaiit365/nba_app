import 'package:flutter/material.dart';

import '../../../Components/history_container_details.dart';
import '../../../Components/history_tile.dart';
import '../../../constants.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HistoryTile(historyHeading: 'Team Names', subtitle: teamNames),
        HistoryTile(historyHeading: 'Established', subtitle: teamFounder),
        HistoryTile(
            historyHeading: 'League History', subtitle: teamLeagueHistory),
        HistoryTile(historyHeading: 'Arena', subtitle: teamArena),
        HistoryTile(historyHeading: 'Owner', subtitle: teamOwner),
        HistoryContainerDetails(
          historyHeading: 'All-Time Greats',
        ),
        HistoryRetiredDetails(historyHeading: 'Retired Number')
        // HistoryTile(
        //     historyHeading: 'Retired Number', subtitle: teamRetiredNumbers),
      ],
    );
  }
}
