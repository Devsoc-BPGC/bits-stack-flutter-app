import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 170,
          child: Column(
            children: [
              ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: [
                      Color(0xff2CEFFC),
                      Color(0xff019DF4),
                    ],
                  ).createShader(bounds);
                },
                child: Text(
                  "BITSStack",
                  style: TextStyle(
                    fontSize: 70,
                    color: Colors.white,
                    fontFamily: "SF Pro Display",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white24,
                      blurRadius: 12,
                      offset: Offset(-1, -1),
                    ),
                    // BoxShadow(
                    //   color: Color(0x33000000),
                    //   blurRadius: 4,
                    //   offset: Offset(4, 4),
                    // ),
                  ],
                  color: Color(0x0000000),
                ),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return 30;
                        }
                        return 20;
                      },
                    ),
                    shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                      (Set<MaterialState> states) {
                        return RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        );
                      },
                    ),
                    padding:
                        MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
                      (Set<MaterialState> states) {
                        return EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15);
                      },
                    ),
                    shadowColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.white12;
                      },
                    ),
                    splashFactory: NoSplash.splashFactory,
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Color(0xff333333);
                      },
                    ),
                  ),
                  icon: Image.asset(
                    'assets/images/google-icon.png',
                    height: 54,
                  ),
                  label: ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(
                        colors: [
                          Color(0xff2CEFFC),
                          Color(0xff019DF4),
                        ],
                      ).createShader(bounds);
                    },
                    child: Text(
                      'Login with Google',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
