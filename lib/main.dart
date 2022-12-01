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
              'Yemek Listesi',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/corba_1.jpg'),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/yemek_1.jpg'),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/tatli_1.jpg'),
            )),
          ],
        ),
      ),
    );
  }
}
