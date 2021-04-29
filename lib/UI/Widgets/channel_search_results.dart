import 'package:flutter/material.dart';

import '../Components/square_channel_icon.dart';

class ChannelSearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: ListView.separated(
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 15,
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SquareChannelIcon();
        },
      ),
    );
  }
}
