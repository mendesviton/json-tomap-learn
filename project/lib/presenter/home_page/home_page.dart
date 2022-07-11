import 'package:flutter/material.dart';

import '../../request/requestweb.dart';
import 'widgets/body_home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    FinanceHttpRepository requesthttp = FinanceHttpRepository();

    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 50,
            // centerTitle: true,
            scrolledUnderElevation: 50,
            actions: [
              const Icon(
                Icons.arrow_right,
                size: 50,
                color: Color.fromARGB(255, 203, 8, 113),
                shadows: [
                  Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 1,
                      color: Color.fromARGB(255, 23, 36, 225))
                ],
              )
            ],
            iconTheme: IconThemeData(color: Colors.red),
            actionsIconTheme: IconThemeData(color: Colors.white, size: 20),
            title: const Text('Coiner',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Color.fromARGB(255, 203, 8, 113),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 1,
                        color: Color.fromARGB(255, 23, 36, 225))
                  ],
                )),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(8),
            )),
            backgroundColor: Color.fromARGB(159, 66, 37, 228),
            shadowColor: Color.fromARGB(255, 0, 0, 0)),
        backgroundColor: const Color.fromRGBO(8, 11, 184, 152),
        body: AppBody(requesthttp: requesthttp));
  }
}
