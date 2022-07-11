import 'package:flutter/material.dart';
import 'package:project/repository/coinmodel.dart';
import 'package:project/request/requestweb.dart';
import 'package:project/splashscreen.dart';

import 'presenter/home_page/home_page.dart';
import 'presenter/home_page/widgets/body_home.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'title'),
    );
  }
}
