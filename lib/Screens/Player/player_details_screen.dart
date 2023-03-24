import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nba_app/Components/default_back_button.dart';
import 'package:nba_app/constants.dart';
import '../Player/Components/body.dart';

class PLayerDetails extends StatelessWidget {
  const PLayerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: DefaultBackButton(buttonColor: Colors.black),
          elevation: 0.2,
          backgroundColor: CupertinoColors.systemGrey6,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Player',
                style: TextStyle(
                    fontSize: 22,
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
                'Details',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffD73257),
                    fontFamily: 'Helvetica'),
              ),
            ],
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 15),
              height: 45,
              width: 45,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: IconButton(
                  highlightColor: Colors.blueGrey.withOpacity(0.05),
                  onPressed: () {},
                  icon: Icon(
                    Icons.perm_media_outlined,
                    color: Colors.blueAccent,
                  )),
            )
          ],
        ),
        backgroundColor: CupertinoColors.systemGrey6,
        body: Body());
  }
}
