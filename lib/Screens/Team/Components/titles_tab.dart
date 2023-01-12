import 'package:flutter/material.dart';

import '../../../Components/title_years.dart';
import '../../../constants.dart';

class TitlesWonTab extends StatelessWidget {
  const TitlesWonTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: <Widget>[
                  Container(
                    height: 10,
                    width: 10,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Play-off Finals Titles',
                    style: TextStyle(fontSize: 17, color: Colors.blueAccent),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 13),
                child: Text(
                  '7-time NBA Finals Champions',
                  style: TextStyle(fontSize: 16, fontFamily: 'Helvetica'),
                ),
              ),
              Center(
                child: Text(
                  'Years Won',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              finalsYearList.isEmpty
                  ? Center(
                      child: Text(
                      'No Play-off Finals trophy won yet.',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ))
                  : GridView.builder(
                      scrollDirection: Axis.vertical,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      physics: BouncingScrollPhysics(),
                      itemCount: 7,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return TitleYears(yearList: finalsYearList[index]);
                      },
                    ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Conference Titles',
                    style: TextStyle(fontSize: 17, color: Colors.blueAccent),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 13),
                child: Text(
                  '10-time NBA Conference Champions',
                  style: TextStyle(fontSize: 16, fontFamily: 'Helvetica'),
                ),
              ),
              Center(
                child: Text(
                  'Years Won',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              conferenceYearList.isEmpty
                  ? Center(
                      child: Text(
                      'No Conference titles won yet.',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ))
                  : GridView.builder(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      physics: AlwaysScrollableScrollPhysics(),
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return TitleYears(yearList: conferenceYearList[index]);
                      },
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
