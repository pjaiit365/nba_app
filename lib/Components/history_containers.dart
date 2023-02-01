import 'package:flutter/material.dart';

import '../constants.dart';

class HistoryContainer extends StatelessWidget {
  final String allTimeName;
  final String pic;
  HistoryContainer({required this.pic, required this.allTimeName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 17.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 112,
            width: 125,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white, width: 1.5),
                image:
                    DecorationImage(image: AssetImage(pic), fit: BoxFit.fill)),
          ),
          SizedBox(height: 10),
          Text(
            allTimeName,
            style: TextStyle(
              color: kblue,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class HistoryContainerRetired extends StatelessWidget {
  final String retiredName;
  final int num;
  HistoryContainerRetired({
    required this.retiredName,
    required this.num,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 17.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              height: 112,
              width: 125,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white, width: 1.5),
              ),
              child: Center(
                child: Text(
                  '# ' + (num.toString()),
                  style: TextStyle(
                    fontSize: 28,
                    color: kblue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          SizedBox(height: 10),
          Text(
            retiredName,
            style: TextStyle(
              color: kblue,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
