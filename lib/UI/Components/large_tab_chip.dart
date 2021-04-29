import 'package:flutter/material.dart';

class LargeTabChip extends StatefulWidget {
  @override
  _LargeTabChipState createState() => _LargeTabChipState();
}

class _LargeTabChipState extends State<LargeTabChip> {
  bool subscribed = false;
  void _toggleSubscribed() {
    setState(() {
      subscribed = !subscribed;
    });
  }

  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (Set<MaterialState> states) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            );
          },
        ),
        padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<MaterialState> states) {
            return EdgeInsets.all(0);
          },
        ),
        splashFactory: NoSplash.splashFactory,
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return Colors.white;
          },
        ),
      ),
      onPressed: _toggleSubscribed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: LinearGradient(
            colors: [
              Color(0xff2CEFFC),
              Color(0xff019DF4),
            ],
          ),
        ),
        padding: EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: subscribed ? Color(0x00fffffff) : Color(0xff333333),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 5,
          ),
          child: subscribed
              ? Center(
                  child: Text(
                    "DevSoc",
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontFamily: "SF Pro Display",
                      fontSize: 20,
                      height: 1,
                    ),
                  ),
                )
              : ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      colors: [
                        Color(0xff2CEFFC),
                        Color(0xff019DF4),
                      ],
                    ).createShader(bounds);
                  },
                  child: Center(
                    child: Text(
                      "DevSoc",
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontFamily: "SF Pro Display",
                        fontSize: 20,
                        height: 1,
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
