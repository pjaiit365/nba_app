import 'package:flutter/material.dart';

class PlayerTeamsList extends StatelessWidget {
  final String heading;
  final List listTitle;
  final int listLength;
  const PlayerTeamsList({
    Key? key,
    required this.heading,
    required this.listTitle,
    required this.listLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text(
              heading,
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 15),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            primary: false,
            itemCount: listLength,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Center(
                  child: Text(
                    listTitle[index],
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
