import 'package:flutter/material.dart';


class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Screen 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              
                child: Text("Go forward to Screen 1"),
                onPressed: () {
                  Navigator.pushNamed(context, '/first');
                }),
            SizedBox(height: 30),
            ElevatedButton(
                child: Text("Go forward to Screen 2"),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                }),
          ],
        ),
      ),
    );
  }
}
