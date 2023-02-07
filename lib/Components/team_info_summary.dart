import 'package:flutter/material.dart';
import 'package:nba_app/Components/carousel_details.dart';
import 'package:nba_app/Components/team_carousel.dart';
import 'package:nba_app/Screens/Home/Components/body.dart';
import '../constants.dart';

class TeamInfoSummary extends StatefulWidget {
  final String image;
  TeamInfoSummary({super.key, required this.image});

  @override
  State<TeamInfoSummary> createState() => _TeamInfoSummaryState();
}

class _TeamInfoSummaryState extends State<TeamInfoSummary> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          height: 220,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(12),
            ),
            border: Border.all(color: Colors.white, width: 1.5),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(widget.image),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35, left: 30),
                      child: Center(
                        child: Text(
                          team[chosenTeamIndex].fullName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Helvetica'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          backgroundBlendMode: BlendMode.lighten),
                      child: Image.asset(
                        teamLogo[chosenTeamIndex],
                        height: 60,
                        width: 60,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              if (activeIndex == 0)
                CarouselDetails(
                  titleLeft: 'Abbreviation: ',
                  subtitleLeft: team[chosenTeamIndex].abbreviation,
                  titleRight: 'City: ',
                  subtitleRight: team[chosenTeamIndex].city,
                ),
              if (activeIndex == 1)
                CarouselDetails(
                  titleLeft: 'Conference: ',
                  subtitleLeft: team[chosenTeamIndex].conference,
                  titleRight: 'Division: ',
                  subtitleRight: team[chosenTeamIndex].division,
                ),
              if (activeIndex == 2)
                CarouselDetails(
                  titleLeft: 'Champ. Titles: ',
                  subtitleLeft: '7',
                  titleRight: 'Conf. Titles: ',
                  subtitleRight: '12',
                ),
              TeamCarousel(),
            ],
          ),
        )
      ],
    );
  }
}

// SizedBox(height: 10),
// Row(
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'Titles Won: ',
// style: TextStyle(
// color: Colors.white,
// fontSize: 18,
// fontStyle: FontStyle.italic),
// ),
// Text(
// (team[chosenTeamIndex].titlesWon).toString(),
// style:
// TextStyle(color: Colors.white, fontSize: 18),
// ),
// ],
// ),
// SizedBox(height: 10),
// Row(
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'Conference: ',
// style: TextStyle(
// color: Colors.white,
// fontSize: 18,
// fontStyle: FontStyle.italic),
// ),
// Text(
// team[chosenTeamIndex].conference,
// style:
// TextStyle(color: Colors.white, fontSize: 18),
// ),
// ],
// ),
// SizedBox(height: 10),
// Row(
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'Division: ',
// style: TextStyle(
// color: Colors.white,
// fontSize: 18,
// fontStyle: FontStyle.italic),
// ),
// Text(
// team[chosenTeamIndex].division,
// style:
// TextStyle(color: Colors.white, fontSize: 18),
// ),
// ],
// ),
