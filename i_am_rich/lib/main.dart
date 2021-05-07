import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("I am Rich"),
        ),
        body: Center(
          child: Image(
              image: NetworkImage(
                  'https://images.pexels.com/photos/3905857/pexels-photo-3905857.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260')),
        ),
      ),
    );
  }
}
