import 'package:flutter/material.dart';
import 'package:nba_app/constants.dart';

class HistoryTile extends StatefulWidget {
  final String historyHeading;
  final List subtitle;
  const HistoryTile({
    required this.historyHeading,
    required this.subtitle,
  });

  @override
  State<HistoryTile> createState() => _HistoryTileState();
}

class _HistoryTileState extends State<HistoryTile> {
  bool displayDetails = false;

  @override
  Widget build(BuildContext context) {
    return teamNames.isNotEmpty
        ? GestureDetector(
            onTap: () {
              setState(() {
                displayDetails = !displayDetails;
              });
            },
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10, bottom: 14, top: 5),
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      // color: Colors.grey[300],
                      color: Color(0xffafafa),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: displayDetails
                              ? Colors.lightBlueAccent
                              : greyDefault,
                          width: displayDetails ? 1.4 : 2.5)),
                  child: Column(
                    mainAxisAlignment: displayDetails
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.historyHeading,
                              style: TextStyle(
                                  fontSize: 17,
                                  color: displayDetails
                                      ? Colors.blueAccent
                                      : Colors.black87,
                                  fontFamily: 'Helvetica',
                                  fontWeight: FontWeight.values[4]),
                            ),
                          ),
                          displayDetails
                              ? Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 37,
                                  color: Colors.blueAccent,
                                )
                              : Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  color: Colors.black,
                                  size: 37,
                                )
                        ],
                      ),
                      displayDetails
                          ? SizedBox(height: 7)
                          : SizedBox(height: 0),
                      displayDetails
                          ? Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 0),
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: widget.subtitle.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.symmetric(vertical: 7),
                                  child: Expanded(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.blueAccent),
                                        ),
                                        SizedBox(width: 15),
                                        Expanded(
                                          child: Text(
                                            widget.subtitle[index],
                                            // overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(height: 0)
                    ],
                  ),
                ),
              ),
            ),
          )
        : Text('No history prov');
  }
}
