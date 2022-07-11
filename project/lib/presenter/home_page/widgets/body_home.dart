import 'package:flutter/material.dart';
import 'package:project/core/assets.dart';
import 'package:project/request/requestweb.dart';

import 'coin_container.dart';

class AppBody extends StatefulWidget {
  const AppBody({
    Key? key,
    required this.requesthttp,
  }) : super(key: key);

  final FinanceHttpRepository requesthttp;

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  String mainCardCoin = '';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return FutureBuilder(
        future: widget.requesthttp.findFinanceInfo(),
        builder: ((context, snapshot) {
          snapshot.data;
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
                // var CoinRepo;
                // CoinRepo = widget.requesthttp.coin;
                // CoinRepo.setUSBCoin();
                return SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.30,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 102, 14, 209),
                                width: 1),
                            color: Colors.grey.shade200.withOpacity(0.50),
                            image: const DecorationImage(
                              image: AssetImage(fundo),
                              fit: BoxFit.cover,
                            ),
                            gradient: const LinearGradient(
                                begin: Alignment.bottomRight,
                                end: Alignment.topRight,
                                colors: [
                                  Color.fromARGB(255, 250, 166, 9),
                                  Color.fromARGB(255, 253, 247, 247),
                                ]),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 20,
                                  spreadRadius: 2,
                                  color: Color.fromARGB(255, 31, 3, 55),
                                  offset: Offset(2, 8))
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(children: [
                                Text(
                                  snapshot.data != null
                                      ? 'rerros'
                                      : mainCardCoin,
                                  style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Color.fromARGB(255, 203, 8, 113),
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                          offset: Offset(1, 1),
                                          blurRadius: 1,
                                          color:
                                              Color.fromARGB(255, 23, 36, 225))
                                    ],
                                  ),
                                )
                              ]),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('26º',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Indoor temp',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey))
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('48.2%',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Outdoor humadity',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey))
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('50.2%',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Indoor temp',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey))
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            InkWell(
                              onTap: () {
                                print(snapshot.data);
                              },
                              child: CoinContainer(
                                  setMain: () {},
                                  nameCoin: widget.requesthttp.coin
                                      .getNameThis('BTC')
                                      .substring(0, 7),
                                  imageCoin: Image.asset(bitcoin)),
                            ),
                            CoinContainer(
                                setMain: () {},
                                nameCoin: widget.requesthttp.coin
                                    .getNameThis('EUR')
                                    .substring(0, 4),
                                imageCoin:
                                    Image.asset('assets/image/euro.png')),
                            CoinContainer(
                                setMain: () {},
                                nameCoin: widget.requesthttp.coin
                                    .getNameThis('usd')
                                    .substring(0, 6),
                                imageCoin: Image.asset(
                                  dollar,
                                  width: 50,
                                  height: 50,
                                )),
                            CoinContainer(
                                setMain: () {},
                                nameCoin: widget.requesthttp.coin
                                    .getNameThis('XRP')
                                    .substring(0, 3),
                                imageCoin: Image.asset(
                                  xrp,
                                  width: 50,
                                  height: 50,
                                )),
                          ],
                        ),
                      )
                      // Text(CoinRepo.getname()),
                      // Text(CoinRepo.getbuyprice().toString()),
                      // Text(CoinRepo.getsellprice().toString()),
                      // Text(CoinRepo.getvariation().toString())
                    ],
                  ),
                );
              }
          }
        }));
  }
}
