import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget dictionary() {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: Colors.orange),
      child: Icon(Icons.menu),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 91, 100, 1),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: dictionary(),
                ),
              ],
            ),
            Text("MEDICAL TERMONOLOGY")
          ],
        ),
      ),
    );
  }
}
