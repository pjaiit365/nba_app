import 'package:flutter/material.dart';

import '../constants.dart';

class TitleYears extends StatelessWidget {
  final String yearList;
  TitleYears({required this.yearList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white, width: 1.5),
      ),
      child: Center(
        child: Text(
          yearList,
          style: TextStyle(
            color: kblue,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
