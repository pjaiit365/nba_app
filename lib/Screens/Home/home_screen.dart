import 'package:flutter/material.dart';
import 'package:nba_app/Screens/Home/Components/body.dart';

import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
  bool isSearchClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: isSearchClicked
            ? Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: TextField(
                  cursorHeight: 25,
                  autofocus: true,
                  controller: searchController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueAccent,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    hoverColor: kblue,
                    hintText: '  Search ...',
                    hintStyle: TextStyle(
                        color: Colors.grey, fontStyle: FontStyle.italic),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0, top: 5, bottom: 5),
            child: Container(
              height: 30,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: kred, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      isSearchClicked = !isSearchClicked;
                    });
                  },
                  icon: Icon(
                    Icons.search_rounded,
                    color: kblue,
                    size: 25,
                  )),
            ),
          )
        ],
      ),
      body: Body(),
    );
  }
}
