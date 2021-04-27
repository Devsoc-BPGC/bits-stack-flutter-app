import 'package:flutter/material.dart';

class ChannelIcon extends StatefulWidget {
  ChannelIcon({Key key}) : super(key: key);

  @override
  _ChannelIconState createState() => _ChannelIconState();
}

class _ChannelIconState extends State<ChannelIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor,
                blurRadius: 15,
                spreadRadius: 1,
                offset: Offset.fromDirection(3.14 / 4, 15),
              ),
            ],
          ),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      Image(
                        image: AssetImage('assets/images/rectangle_31.png'),
                      ),
                      Positioned(
                        child: Image(
                          image: AssetImage('assets/images/add.png'),
                        ),
                        // child: Image(
                        //   image: AssetImage('assets/images/tick.png'),
                        // ),
                        top: 5,
                        right: 5,
                      ),
                    ],
                  ),
                  Text("DevSoc"),
                  Text("69 members"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
