import 'package:flutter/material.dart';

class SquareChannelIcon extends StatefulWidget {
  @override
  _SquareChannelIconState createState() => _SquareChannelIconState();
}

class _SquareChannelIconState extends State<SquareChannelIcon> {
  bool subscribed = false;
  void _toggleSubscribed() {
    setState(() {
      subscribed = !subscribed;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0x19ececec),
            blurRadius: 12,
            offset: Offset(-4, -6),
          ),
          // BoxShadow(
          //   color: Color(0x33000000),
          //   blurRadius: 4,
          //   offset: Offset(4, 4),
          // ),
        ],
        color: Color(0x0000000),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return 10;
              }
              return 20;
            },
          ),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
            (Set<MaterialState> states) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              );
            },
          ),
          padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
            (Set<MaterialState> states) {
              return EdgeInsets.all(0);
            },
          ),
          shadowColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Color(0x19ececec);
              }
              return Color(0xff333333);
            },
          ),
          splashFactory: NoSplash.splashFactory,
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              return Color(0xff333333);
            },
          ),
        ),
        onPressed: _toggleSubscribed,
        child: Stack(
          children: [
            Positioned(
              child: Image(
                image: AssetImage('assets/images/avatar.png'),
                fit: BoxFit.scaleDown,
                height: 80,
                width: 80,
                // For actual Image of Channel
                // Else, will hold this as Placeholder Image
              ),
              top: 14,
              left: 30,
              right: 30,
            ),
            Positioned(
              child: !subscribed
                  ? Image(
                      image: AssetImage('assets/images/add.png'),
                      height: 30,
                    )
                  : Image(
                      image: AssetImage('assets/images/subscribed.png'),
                      height: 30,
                    ),
              top: 3,
              right: 30,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 50,
                child: ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      colors: [
                        Color(0xff2CEFFC),
                        Color(0xff019DF4),
                      ],
                    ).createShader(bounds);
                  },
                  child: Column(
                    children: [
                      Text(
                        "DevSoc Inductions",
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SF Pro Display",
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            wordSpacing: -1),
                      ),
                      Text(
                        "69 Members",
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "SF Pro Display",
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
