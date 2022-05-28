import 'package:flutter/material.dart';
import 'package:tugas2kelompok3/helper.dart';
import 'package:tugas2kelompok3/view/ren.dart';
import 'bus1detail.dart';
import 'bus2detail.dart';
import 'bus3detail.dart';
import 'bus4detail.dart';
import 'bus5detail.dart';
import 'bus6detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            "PICK YOUR BUS",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/bus1.png",
                      width: 170,
                      height: 170,
                    ),
                    const Text(
                      "LINTAS PONTIANAK",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
                                    builder: (context) => const Bus1()));
                          },
                          child: const Center(
                            child: Text(
                              "DETAIL",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/bus3.jpg",
                      width: 170,
                      height: 170,
                    ),
                    const Text(
                      "MARISTA DUALDECKER",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
                                    builder: (context) => const Bus3()));
                          },
                          child: const Center(
                            child: Text(
                              "DETAIL",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/bus4.png",
                      width: 170,
                      height: 170,
                    ),
                    const Text(
                      "BLUE BIRD",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
                                    builder: (context) => const Bus4()));
                          },
                          child: const Center(
                            child: Text(
                              "DETAIL",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/bus5.jpg",
                      width: 170,
                      height: 170,
                    ),
                    const Text(
                      "WHITE PIGEON",
                      style: TextStyle(color: Colors.white),
                    ),
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
                                    builder: (context) => const Bus5()));
                          },
                          child: const Center(
                            child: Text(
                              "DETAIL",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/bus2.jpg",
                      width: 170,
                      height: 170,
                    ),
                    const Text(
                      "KANGAROO VACATION",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
                                    builder: (context) => const Bus2()));
                          },
                          child: const Center(
                            child: Text(
                              "DETAIL",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/bus6.jpg",
                      width: 170,
                      height: 170,
                    ),
                    const Text(
                      "JAPANESE TOUR",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
                                    builder: (context) => const Bus6()));
                          },
                          child: const Center(
                            child: Text(
                              "DETAIL",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Card(
            color: Color.fromARGB(255, 72, 22, 187),
            elevation: 3,
            child: SizedBox(
              height: 50,
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Rent()));
                },
                child: Center(
                  child: Text(
                    "RENT NOW!",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Card(
            color: Colors.black,
            elevation: 3,
            child: SizedBox(
              height: 50,
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {
                  AuthService authService = AuthService();
                  authService.signOut(context);
                },
                child: const Center(
                  child: Text(
                    "BACK TO LOGIN",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(32, 255, 255, 255),
    );
  }
}
