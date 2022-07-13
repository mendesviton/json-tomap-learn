import 'package:flutter/material.dart';

class CoinContainer extends StatelessWidget {
  final String nameCoin;
  final Image imageCoin;
  final Function setMain;

  const CoinContainer(
      {Key? key,
      required this.setMain,
      required this.nameCoin,
      required this.imageCoin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          setMain(nameCoin);
        },
        child: Container(
          padding: EdgeInsets.all(15),
          width: 150,
          decoration: BoxDecoration(
              boxShadow: const [
                //efeito de profundidade
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 2,
                  color: Color.fromARGB(255, 46, 16, 73),
                )
              ],
              borderRadius: BorderRadius.circular(25),
              color: Color.fromARGB(255, 28, 43, 160)),
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  imageCoin,
                  SizedBox(
                    width: 50,
                    child: Text(
                      nameCoin,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(
                            255,
                            255,
                            255,
                            255,
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
