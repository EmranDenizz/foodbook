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
        body: Center(
          child: Column(),
        ),
      ),
    );
  }
}

class YemekSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
