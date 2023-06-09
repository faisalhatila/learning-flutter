import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        // color: Colors.grey[400],
        child: Text("Welcome"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        onPressed: () => print("Hello World"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
