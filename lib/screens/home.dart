import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget dictionary() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            height: 50,
            child: Icon(
              Icons.menu,
              size: 50,
              color: Colors.white,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            child: Text(
              "DICTIONARY",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mansalva',
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget sentenceEXP() {
    return RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.orange)),
        color: Colors.orange,
        child: Text(
          " * ประโยคตัวอย่าง ",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Mali'),
        ),
        onPressed: () {
          print("Click");
        });
  }

  Widget vocapEXP() {
    return RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.orange)),
        color: Colors.orange,
        child: Text(" * คำศัพท์เกี่ยวกับโรคต่าง ๆ ",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Mali')),
        onPressed: () {
          print("Click");
        });
  }

  Widget medical() {
    return Container(
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "MEDICAL",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mansalva',
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'TERMENOLOGY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mansalva',
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              new Flexible(
                  child: Column(
                children: <Widget>[
                  Text(
                      'รายงานนี้เป็นส่วนหนึ่งของรายวิชา 806 - 415 ฝึกงานคณะวิเทศศึกษา สาขาวิชาไทยศึกษา มหาวิทยาลัยสงขลาครินทร์ วิทยาเขตภูเก็ต ภาคเรียนที่ 3 ปีการศึกษา 2562',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Mali')),
                ],
              ))
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                sentenceEXP(),
                vocapEXP(),
                sentenceEXP(),
              ],
            ),
          ),
          Text(" * คลิ๊กหัวข้อที่คุณสนใจ ",
              style: TextStyle(fontSize: 12, color: Colors.white,fontFamily: 'Mali'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 91, 100, 1),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: dictionary(),
                ),
              ],
            ),
            medical(),
          ],
        ),
      ),
    );
  }
}
