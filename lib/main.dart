import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [];
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return pages.elementAt(index);
        },
      ),
    );
  }
}
