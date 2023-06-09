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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text("Hello World"),
          TextButton(
            onPressed: () => {},
            child: Text(
              "Click Me!",
              style: TextStyle(color: Colors.black),
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.amber),
          ),
          Container(
            color: Colors.cyan[600],
            padding: EdgeInsets.all(30.0),
            child: Text('Inside Container'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        onPressed: () => print("Hello World"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
