import 'package:flutter/material.dart';

import '../constants.dart';

class PlayerTile extends StatelessWidget {
  const PlayerTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 15),
      child: Container(
        height: 85,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white, width: 1.5)),
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/nba_logo.png',
                height: 60,
                width: 70,
              ),
              VerticalDivider(
                thickness: 3,
                color: Colors.white,
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    'Lebron James',
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Power Forward',
                      style: TextStyle(fontSize: 13, fontFamily: 'Helvetica'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 11.0),
                child: Text(
                  '#' + ' 23',
                  style: TextStyle(
                      fontSize: 27, color: kblue, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
