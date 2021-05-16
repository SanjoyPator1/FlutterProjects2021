import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var imageUrl =
      "https://images.unsplash.com/photo-1581291518857-4e27b48ff24e?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DraggableScrollableSheet"),
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    imageUrl,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),

            //draggableScrollableSheet
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DraggableScrollableSheet(builder: (context, controller) {
                return Container(
                  //color: Colors.white,
                  child: ListView.builder(
                      itemCount: 15,
                      controller: controller,
                      itemBuilder: (BuildContext context, index) {
                        return ListTile(
                          title: Text('Item ${index + 1}'),
                        );
                      }),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
