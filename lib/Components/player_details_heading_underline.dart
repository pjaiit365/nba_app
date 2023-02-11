import 'package:flutter/material.dart';

class PlayerDetailsHeadingUnderline extends StatelessWidget {
  const PlayerDetailsHeadingUnderline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 5,
          width: 25,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        SizedBox(width: 7),
        Container(
          height: 6,
          width: 6,
          decoration:
              BoxDecoration(color: Colors.redAccent, shape: BoxShape.circle),
        ),
        SizedBox(width: 7),
        Container(
          height: 5,
          width: 25,
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
      ],
    );
  }
}
