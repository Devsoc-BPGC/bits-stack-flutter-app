import 'package:bitsstack_flutter_app/UI/Screens/login_screen.dart';
import 'package:bitsstack_flutter_app/UI/Screens/search_tab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      LoginScreen(),
      SearchTab(),
    ];

    return MaterialApp(
      title: 'BITSStack Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xff333333),
      ),
      debugShowCheckedModeBanner: false,
      home: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return pages.elementAt(index);
        },
      ),
      routes: {},
    );
  }
}
