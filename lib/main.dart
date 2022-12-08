import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFE0F2F1),
        appBar: AppBar(
          backgroundColor: Color(0xFFE0F7FA),
          title: Center(
            child: Text(
              'FOOD BOOK',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbadeger = 1;
  int yemekdeger = 1;
  int tatlideger = 1;

  void foodList() {
    setState(() {
      corbadeger = Random().nextInt(5) + 1;
      yemekdeger = Random().nextInt(5) + 1;
      tatlideger = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: foodList,
                  child: Image.asset('images/corba_$corbadeger.jpg'),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: foodList,
                child: Image.asset('images/yemek_$yemekdeger.jpg'),
              ),
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: foodList,
                  child: Image.asset('images/tatli_$tatlideger.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
