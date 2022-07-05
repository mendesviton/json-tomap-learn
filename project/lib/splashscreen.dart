import 'package:flutter/material.dart';
import 'package:project/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 7), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(
                  title: 'fodase',
                )));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topRight,
                colors: [
              Color.fromARGB(255, 26, 26, 28),
              Color.fromARGB(255, 9, 9, 9),
              Color.fromARGB(255, 9, 9, 9),
            ]
                // colors: [Colors.blueAccent, Colors.purple],
                )),
        // decoration: BoxDecoration(color: Colors.black54),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              size: 150,
              color: Colors.white,
            ),
            SizedBox(
              height: 70,
            ),
            Container(
                height: 70,
                width: 180,
                child: Center(
                  child: Text(
                    'Coiner',
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'Roboto Mono',
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 80,
                width: 300,
                child: Center(
                    child: Text(
                  'Mercado em tempo real',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontFamily: 'Roboto Mono',
                  ),
                )),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
