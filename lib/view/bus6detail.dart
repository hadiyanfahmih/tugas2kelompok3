import 'package:flutter/material.dart';
import 'homepage.dart';

class Bus6 extends StatelessWidget {
  const Bus6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("JAPANESE TOUR"),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/bus6.jpg",
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'Bus Japanese Tour adalah Bus yang memiliki kapasitas penumpang sebanyak 36 orang ini dibekali dengan peralatan makan, berbagai makanan berat serta ringan, dan juga dilengkapi kamar kecil dan wifi.',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  const Text(
                    "HARGA SEWA: Rp.400.000,00 per orang",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Serif",
                        height: 2.0,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Card(
                  //   color: Colors.black,
                  //   elevation: 3,
                  //   child: SizedBox(
                  //     height: 30,
                  //     width: 200,
                  //     child: InkWell(
                  //       splashColor: Colors.white,
                  // onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const Rent()));
                  // },
                  //       child: const Center(
                  //         child: Text(
                  //           "RENT NOW",
                  //           style: TextStyle(fontSize: 20, color: Colors.white),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          color: Colors.black,
                          elevation: 3,
                          child: SizedBox(
                            height: 30,
                            width: 100,
                            child: InkWell(
                              splashColor: Colors.white,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              child: const Center(
                                child: Text(
                                  "BACK",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey);
  }
}
