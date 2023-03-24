import 'package:flutter/material.dart';

import '../../../Components/title_years.dart';
import '../../../constants.dart';

class TitlesWonTab extends StatefulWidget {
  const TitlesWonTab({
    Key? key,
  }) : super(key: key);

  @override
  State<TitlesWonTab> createState() => _TitlesWonTabState();
}

class _TitlesWonTabState extends State<TitlesWonTab> {
  bool isHovering = false;
  bool finalsShowMore = false;
  bool conferenceShowMore = false;

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
                children: [
                  Expanded(
                    child: Column(
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
                              style: TextStyle(
                                  fontSize: 17, color: Colors.blueAccent),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 25.0, bottom: 13),
                          child: Text(
                            '7-time NBA Finals Champions',
                            style: TextStyle(
                                fontSize: 16, fontFamily: 'Helvetica'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        finalsShowMore = !finalsShowMore;
                      });
                    },
                    onHover: (value) {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color:
                            isHovering ? Colors.blueAccent : Colors.grey[300],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 1.5),
                      ),
                      child: finalsShowMore
                          ? Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.blueAccent,
                              size: 38,
                            )
                          : Icon(
                              Icons.arrow_forward_ios,
                              color: isHovering ? Colors.white : Colors.black,
                            ),
                    ),
                  )
                ],
              ),
              Center(
                  child: finalsShowMore
                      ? Text(
                          'Years Won',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      : null),
              finalsYearList.isEmpty
                  ? Center(
                      child: finalsShowMore
                          ? Text(
                              'No Play-off Finals trophy won yet.',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          : null)
                  : finalsShowMore
                      ? GridView.builder(
                          scrollDirection: Axis.vertical,
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          physics: BouncingScrollPhysics(),
                          itemCount: 7,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return TitleYears(yearList: finalsYearList[index]);
                          },
                        )
                      : Text(''),
            ],
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                              style: TextStyle(
                                  fontSize: 17, color: Colors.blueAccent),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 25.0, bottom: 13),
                          child: Text(
                            '10-time NBA Conference Champions',
                            style: TextStyle(
                                fontSize: 16, fontFamily: 'Helvetica'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        conferenceShowMore = !conferenceShowMore;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white, width: 1.5),
                        ),
                        child: conferenceShowMore
                            ? Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Colors.blueAccent,
                                size: 38,
                              )
                            : Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                      ),
                    ),
                  )
                ],
              ),
              Center(
                  child: conferenceShowMore
                      ? Text(
                          'Years Won',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      : null),
              conferenceYearList.isEmpty
                  ? Center(
                      child: conferenceShowMore
                          ? Text(
                              'No Conference titles won yet.',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          : null)
                  : conferenceShowMore
                      ? GridView.builder(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          physics: AlwaysScrollableScrollPhysics(),
                          itemCount: 10,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return TitleYears(
                                yearList: conferenceYearList[index]);
                          },
                        )
                      : Text(''),
            ],
          ),
        ],
      ),
    );
  }
}
