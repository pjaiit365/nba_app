import 'package:flutter/material.dart';

import '../constants.dart';

class TeamCarousel extends StatefulWidget {
  const TeamCarousel({
    Key? key,
  }) : super(key: key);

  @override
  State<TeamCarousel> createState() => _TeamCarouselState();
}

class _TeamCarouselState extends State<TeamCarousel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
                color: activeIndex == 0 ? Colors.blueAccent : Colors.grey,
                shape: BoxShape.circle),
          ),
          SizedBox(width: 6),
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
                color: activeIndex == 1 ? Colors.blueAccent : Colors.grey,
                shape: BoxShape.circle),
          ),
          SizedBox(width: 6),
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
                color: activeIndex == 2 ? Colors.blueAccent : Colors.grey,
                shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }
}
