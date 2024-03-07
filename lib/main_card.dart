import 'package:flutter/material.dart';

void main() {
  runApp(
    const Home(),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.amberAccent,
              foregroundImage: AssetImage('assets/images/profile.png'),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Jagat Jeevan",
              style: TextStyle(
                  color: Colors.cyan,
                  fontFamily: "Pacifico",
                  fontSize: 38,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "LEAD, UI DEVELOPER",
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
              width: 120,
              child: Divider(
                color: Colors.cyan,
              ),
            ),
            Card(
              margin: EdgeInsets.only(
                left: 20.0,
                top: 10.0,
                right: 20.0,
                bottom: 10.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blueGrey,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                title: Text(
                  "+91 9999 999 999",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(
                left: 20.0,
                top: 10.0,
                right: 20.0,
                bottom: 10.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.blueGrey,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                title: Text(
                  "jagat1jeevan@gmail.com",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
