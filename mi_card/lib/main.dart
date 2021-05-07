import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  "https://scontent.fgau1-1.fna.fbcdn.net/v/t1.6435-9/161101760_2793829967546850_2739388248639113779_n.jpg?_nc_cat=105&_nc_map=test-rt&ccb=1-3&_nc_sid=174925&_nc_ohc=YSGy0_7pRekAX_w-vMy&_nc_ht=scontent.fgau1-1.fna&oh=6d3d6ad4c856c42795e09ef93a7608ea&oe=60B56785"),
            ),
            Text(
              "Sanjoy Pator",
              style: GoogleFonts.pacifico(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Text(
              "FLUTTER DEVELOPER",
              style: GoogleFonts.sourceSansPro(
                fontSize: 20,
                color: Colors.teal[100],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              width: 300,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Icon(
                    Icons.call,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "+60007162178621872",
                    style: GoogleFonts.abel(
                      fontSize: 20,
                      letterSpacing: 2.5,
                    ),
                  )
                ]),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  "sanjoypator1@gmail.com",
                  style: GoogleFonts.abel(
                    fontSize: 20,
                    letterSpacing: 2.5,
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
