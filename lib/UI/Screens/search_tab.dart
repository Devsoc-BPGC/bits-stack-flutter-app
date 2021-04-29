import '../Widgets/tag_search_result.dart';
import '../Widgets/channel_search_results.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size appBarSize = AppBar().preferredSize;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(appBarSize.width, appBarSize.height + 10),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff333333),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: ListView(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: [
                      Color(0xff2CEFFC),
                      Color(0xff019DF4),
                    ],
                  ).createShader(bounds);
                },
                child: Text(
                  "Channels",
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "SF Pro Display",
                    fontSize: 25,
                    height: 1,
                  ),
                ),
              ),
            ),
            ChannelSearchResults(),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: [
                      Color(0xff2CEFFC),
                      Color(0xff019DF4),
                    ],
                  ).createShader(bounds);
                },
                child: Text(
                  "Tags",
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "SF Pro Display",
                    fontSize: 25,
                    height: 1,
                  ),
                ),
              ),
            ),
            TagSearchResults(),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: [
                      Color(0xff2CEFFC),
                      Color(0xff019DF4),
                    ],
                  ).createShader(bounds);
                },
                child: Text(
                  "Posts",
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "SF Pro Display",
                    fontSize: 25,
                    height: 1,
                  ),
                ),
              ),
            ),
            Container(
              height: 500,
            )
          ],
        ),
      ),
    );
  }
}
