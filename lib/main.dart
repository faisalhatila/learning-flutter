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
      body: Center(
          child: IconButton(
        onPressed: () => {},
        icon: Icon(Icons.alternate_email),
        tooltip: "Email",
        color: Colors.amber[600],
      )
          // child: Icon(
          //   Icons.airport_shuttle,
          //   color: Colors.red[500],
          //   size: 500,
          // ),
          // child: Text(
          //   "Hello Ninjas",
          //   style: TextStyle(
          //     color: Colors.blue[600],
          //     fontSize: 20.0,
          //     fontWeight: FontWeight.bold,
          //     fontFamily: 'IndieFlower',
          //   ),
          // ),
          ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        onPressed: () => print("Hello World"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
