import 'package:bitsstack_flutter_app/UI/Components/large_tab_chip.dart';
import 'package:flutter/material.dart';

class TagSearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: ListView.separated(
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 5,
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return LargeTabChip();
        },
      ),
    );
  }
}
