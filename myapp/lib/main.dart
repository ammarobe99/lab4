import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool flutterCorse = false;
  bool car = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Text(
                "plese selecet you car!",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Divider(height: 24),
              CheckboxListTile(
                secondary: Icon(Icons.car_rental),
                title: Text(
                  "Bmw",
                  style: TextStyle(fontSize: 30),
                ),
                value: flutterCorse,
                onChanged: ((val) {
                  setState(() {
                    flutterCorse = val!;
                  });
                }),
              ),
              if (car == true)
                Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.qMYxalaY7DX1Tn-SnPhL9wHaEI?pid=ImgDet&rs=1")),
              CheckboxListTile(
                secondary: Icon(Icons.car_rental),
                title: Text(
                  "Kia",
                  style: TextStyle(fontSize: 30),
                ),
                value: car,
                onChanged: ((val) {
                  setState(() {
                    car = val!;
                  });
                }),
              ),
              if (flutterCorse == true)
                Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.oJ6FRP2IRJ0atgCWhA8R4QHaE8?pid=ImgDet&rs=1")),
            ],
          ),
        ),
      ),
    );
  }
}
