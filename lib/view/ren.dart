import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tugas2kelompok3/helper.dart';
import 'homepage.dart';
import 'main.dart';
import 'package:firebase_database/firebase_database.dart';

class Rent extends StatelessWidget {
  TextEditingController nama = TextEditingController();
  TextEditingController nohp = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController namabus = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("RENT FORM"),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
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
                          controller: nama,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              size: 40,
                            ),
                            hintText: "Nama",
                            iconColor: Color.fromARGB(255, 255, 255, 255),
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                            labelText: "Nama",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: nohp,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
                              size: 40,
                            ),
                            hintText: "Nomor HP",
                            iconColor: Color.fromARGB(255, 255, 255, 255),
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                            labelText: "Nomor Hp",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            prefixIcon: Icon(
                              Icons.mail,
                              size: 40,
                            ),
                            hintText: "Email",
                            iconColor: Color.fromARGB(255, 255, 255, 255),
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: namabus,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            prefixIcon: Icon(
                              Icons.bus_alert,
                              size: 40,
                            ),
                            hintText: "Nama Bus",
                            iconColor: Color.fromARGB(255, 255, 255, 255),
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                            labelText: "Nama Bus",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(),
                        Card(
                          color: Colors.black,
                          elevation: 3,
                          child: SizedBox(
                            height: 50,
                            child: InkWell(
                              splashColor: Colors.white,
                              onTap: () async {
                                // UTAMANYE BERHASIL
                                Map<String, dynamic> data = {
                                  "Nama": nama.text,
                                  "No.HP": nohp.text,
                                  "E-Mail": email.text,
                                  "Nama Bus": namabus.text,
                                  "Paket": "DENGAN SUPIR+200K"
                                };
                                if (nama.text != "" &&
                                    nohp.text != "" &&
                                    email.text != "" &&
                                    namabus.text != "") {
                                  await FirebaseFirestore.instance
                                      .collection("Dengan Supir+200K")
                                      .add(data)
                                      .then((value) async {
                                    await showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                              title:
                                                  Text("Booking Successfully!"),
                                              content: Text(
                                                  "note : Admin kami akan menghubugi melalui nomor telfon yang tertera\nAdmin No. : 085821514458"));
                                        });
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()),
                                        (route) => false);
                                  });
                                } else {
                                  await showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                            title: Text("Booking Failed!"),
                                            content:
                                                Text("Please insert the data"));
                                      });
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Rent()),
                                      (route) => false);
                                }
                              },
                              child: const Center(
                                child: Text(
                                  "SEWA PAKAI SUPIR + Rp.200.000,00",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ),
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
                              onTap: () async {
                                // UTAMANYE BERHASIL
                                Map<String, dynamic> data = {
                                  "Nama": nama.text,
                                  "No.HP": nohp.text,
                                  "E-Mail": email.text,
                                  "Nama Bus": namabus.text,
                                  "Paket": "TANPA SUPIR"
                                };
                                if (nama.text != "" &&
                                    nohp.text != "" &&
                                    email.text != "" &&
                                    namabus.text != "") {
                                  await FirebaseFirestore.instance
                                      .collection("Tanpa Supir")
                                      .add(data)
                                      .then((value) async {
                                    await showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                              title: Text("Booking Sucesfully"),
                                              content: Text(
                                                  "note : Admin kami akan menghubugi melalui nomor telfon yang tertera\nAdmin No. : 085821514458"));
                                        });
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()),
                                        (route) => false);
                                  });
                                } else {
                                  await showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                            title: Text("Booking Failed!"),
                                            content:
                                                Text("Please insert the data"));
                                      });
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Rent()),
                                      (route) => false);
                                }
                              },
                              child: const Center(
                                child: Text(
                                  "SEWA TANPA SUPIR",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey);
  }
}
