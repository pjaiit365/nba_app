import 'package:flutter/material.dart';
import 'package:nba_app/Screens/Home/Components/body.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'NBA',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kblue,
                  fontFamily: 'Helvetica'),
            ),
            Image.asset(
              'assets/images/nba_logo.png',
              height: 50,
              width: 50,
            ),
            Text(
              'TODAY',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD73247),
                  fontFamily: 'Helvetica'),
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}
