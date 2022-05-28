import 'package:flutter/material.dart';
import 'package:tugas2kelompok3/helper.dart';
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';

// MAIN
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    title: "Login",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.black,
    ),
    home: Login(),
  ));
}

// LOGIN
class Login extends StatelessWidget {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text("RENTAL BUS SISKOM | LOGIN"),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(101, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      shape: BoxShape.circle),
                  child: Center(
                    child: Image.asset(
                      "assets/images/buslogo.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "SEWA MURAH LIBURAN TENANG",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: authService.email,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87),
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            size: 40,
                          ),
                          iconColor: Color.fromARGB(255, 255, 255, 255),
                          labelText: "E-Mail",
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: authService.password,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 40,
                          ),
                          iconColor: Color.fromARGB(255, 255, 255, 255),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Card(
                        color: Colors.black,
                        elevation: 3,
                        child: SizedBox(
                          height: 50,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {
                              if (authService.email != "" &&
                                  authService.password != "") {
                                authService.loginUser(context);
                              }
                            },
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                            child: const Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// REGISTER
class Register extends StatelessWidget {
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text("RENTAL BUS SISKOM | REGISTER"),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(101, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      shape: BoxShape.circle),
                  child: Center(
                    child: Image.asset(
                      "assets/images/buslogo.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "SEWA MURAH LIBURAN TENANG",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: authService.email,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87),
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            size: 40,
                          ),
                          iconColor: Color.fromARGB(255, 255, 255, 255),
                          labelText: "E-Mail",
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: authService.password,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 40,
                          ),
                          iconColor: Color.fromARGB(255, 255, 255, 255),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Card(
                        color: Colors.black,
                        elevation: 3,
                        child: SizedBox(
                          height: 50,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {
                              if (authService.email != "" &&
                                  authService.password != "") {
                                authService.registerUser(context);
                              }
                            },
                            child: const Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Color.fromARGB(255, 75, 74, 74),
                        elevation: 3,
                        child: SizedBox(
                          height: 50,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: const Center(
                              child: Text(
                                "Already have an account? Login",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
