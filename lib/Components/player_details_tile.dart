import 'package:flutter/material.dart';

class PlayerDetailsTile extends StatelessWidget {
  final String title;
  final String subtitle;
  const PlayerDetailsTile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title + ': ',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.blueAccent),
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
