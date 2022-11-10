import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/pages/main_page.dart';

/// All other files are called through code below.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // main root of application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Research Compatible App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // initial page app loads in to
      home: MainPage(),
    );
  }
}
