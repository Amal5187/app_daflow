import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        Container(
          child: Image.asset(
            'images/group.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          height: 180,
        ),
        SizedBox(
          height: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 80,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 7),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color(0xFFFEE7E7),
                elevation: 4,
                child: Center(
                  child: ListTile(
                    trailing: Image.asset(
                      'images/new.gif',
                      scale: 9,
                    ),
                    title: Text(
                        'Senior Citizen voter\'s are equipp with wheelchair'),
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 7),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color(0xFFFEE7E7),
                elevation: 4,
                child: Center(
                  child: ListTile(
                    trailing: Image.asset(
                      'images/new.gif',
                      scale: 9,
                    ),
                    leading: Image.asset(
                      'images/2.png',
                      scale: .5,
                    ),
                    title: Text('Senior Citizen voter\'s are equipped '),
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 7),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color(0xFFFEE7E7),
                elevation: 4,
                child: Center(
                  child: ListTile(
                    leading: Image.asset(
                      'images/3.png',
                      scale: .5,
                    ),
                    title: Text(
                        'Senior Citizen voter\'s are equipped with wheelchair'),
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 7),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color(0xFFFEE7E7),
                elevation: 4,
                child: Center(
                  child: ListTile(
                    leading: Image.asset(
                      'images/4.png',
                      scale: .5,
                    ),
                    title: Text(
                        'Senior Citizen voter\'s are equipped with wheelchair'),
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 7),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color(0xFFFEE7E7),
                elevation: 4,
                child: Center(
                  child: ListTile(
                    leading: Image.asset(
                      'images/5.png',
                      scale: .5,
                    ),
                    title: Text(
                        'Senior Citizen voter\'s are equipped with wheelchair'),
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 7),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color(0xFFFEE7E7),
                elevation: 4,
                child: Center(
                  child: ListTile(
                    leading: Image.asset(
                      'images/6.png',
                      scale: .8,
                    ),
                    title: Text('Senior Citizen voter\'s are equipped'),
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 7),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color(0xFFFEE7E7),
                elevation: 4,
                child: Center(
                  child: ListTile(
                    leading: Image.asset(
                      'images/1.png',
                      scale: .5,
                    ),
                    title: Text(
                        'Senior Citizen voter\'s are equipped with wheelchair'),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
