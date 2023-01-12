import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class TeamInfoSummary extends StatelessWidget {
  const TeamInfoSummary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 2),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(12),
          ),
          border: Border.all(color: Colors.white, width: 1.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Center(
              child: Text(
                'Golden State Warriors',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Helvetica'),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Abbreviation: ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            'GSW',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Location: ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            'California, LA',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Titles Won: ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            '29',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Conference: ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            'East',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Division: ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            'Pacific',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, bottom: 10),
                  child: Image.asset(
                    teamLogo[chosenTeamIndex],
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
