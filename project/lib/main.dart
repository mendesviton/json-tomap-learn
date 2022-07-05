import 'package:flutter/material.dart';
import 'package:project/repository/coinmodel.dart';
import 'package:project/request/requestweb.dart';
import 'package:project/splashscreen.dart';

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
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    FinanceHttpRepository requesthttp = FinanceHttpRepository();
    var CoinRepo;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FutureBuilder(
            future: requesthttp.findFinanceInfo(),
            builder: ((context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  {
                    return Container(
                      child: Text('data'),
                    );
                  }

                default:
                  {
                    CoinRepo = requesthttp.coin;
                    CoinRepo.setUSBCoin();
                    return Container(
                      child: Column(
                        children: [
                          Text(CoinRepo.getname()),
                          Text(CoinRepo.getbuyprice().toString()),
                          Text(CoinRepo.getsellprice().toString()),
                          Text(CoinRepo.getvariation().toString())
                        ],
                      ),
                    );
                  }
              }
            })));
    //    Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //     ),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //     },
    //     tooltip: 'Increment',
    //     child: const Icon(Icons.add),
    //   ),
    // );
  }
}
