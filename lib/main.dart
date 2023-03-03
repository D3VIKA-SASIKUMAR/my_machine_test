import 'package:flutterapi/views/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const API());
}

class API extends StatelessWidget {
  const API({Key ?key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePageView(),
    );
  }
}


