import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nba_app/Components/history_containers.dart';

import '../constants.dart';

class HistoryContainerDetails extends StatefulWidget {
  final String historyHeading;

  const HistoryContainerDetails({
    required this.historyHeading,
  });

  @override
  State<HistoryContainerDetails> createState() =>
      _HistoryContainerDetailsState();
}

class _HistoryContainerDetailsState extends State<HistoryContainerDetails> {
  bool displayDetails = false;

  @override
  Widget build(BuildContext context) {
    return allTimeGreatsName.isNotEmpty
        ? GestureDetector(
            onTap: () {
              setState(() {
                displayDetails = !displayDetails;
                if (widget.historyHeading == 'All-Time Greats') {
                  isAllTimeGreatsClicked = !isAllTimeGreatsClicked;
                }
                if (widget.historyHeading == 'Retired Number') {
                  isRetiredNumberClicked = !isRetiredNumberClicked;
                }
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
                                horizontal: 20.0,
                                vertical: 0,
                              ),
                              child: GridView.builder(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 5),
                                physics: BouncingScrollPhysics(),
                                itemCount: allTimeGreatsName.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return HistoryContainer(
                                      pic: allTimeGreatsImage[index],
                                      allTimeName: allTimeGreatsName[index]);
                                },
                              ),
                            )
                          : SizedBox(height: 0)
                    ],
                  ),
                ),
              ),
            ),
          )
        : Text('No All-Time Great Players in this team');
  }
}

class HistoryRetiredDetails extends StatefulWidget {
  final String historyHeading;

  const HistoryRetiredDetails({
    required this.historyHeading,
  });

  @override
  State<HistoryRetiredDetails> createState() => _HistoryRetiredDetailsState();
}

class _HistoryRetiredDetailsState extends State<HistoryRetiredDetails> {
  bool displayDetails = false;

  @override
  Widget build(BuildContext context) {
    return teamRetiredNumbers.isNotEmpty
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
                                horizontal: 20.0,
                                vertical: 0,
                              ),
                              child: GridView.builder(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 5),
                                physics: BouncingScrollPhysics(),
                                itemCount: teamRetiredNumbers.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return HistoryContainerRetired(
                                    num: teamRetiredNumbers[index],
                                    retiredName: teamRetiredNames[index],
                                  );
                                },
                              ),
                            )
                          : SizedBox(height: 0)
                    ],
                  ),
                ),
              ),
            ),
          )
        : Text('No numbers have been retired for this team');
  }
}
