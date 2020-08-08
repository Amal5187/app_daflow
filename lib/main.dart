import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DAFLOW',
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new MyHomePage(),
        '/Login': (BuildContext context) => Login(),
      },
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List district = ['Kasargod', 'Kannur', 'Wayanad', 'Kozhikode'];
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Container(
            color: Color(0xFF940000),
          ),
          Image.asset('images/cheg.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Image.asset(
                'images/symbol.png',
                color: Color(0x59FFFFFF),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'LDF വരും, \nഎല്ലാം \nശരിയാകും.',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Color(0x99FF9C9C), fontSize: 40),
                  ),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Container(
                child: Center(
                    child: Text(
                  'വരും എല്ലാം ശരിയാകും.',
                  style: TextStyle(
                    color: Color(0x99FFFFFF),
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  ),
                )),
              ),
              SizedBox(
                height: 43,
              ),
            ],
          ),
          Container(
            height: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)),
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'Choose Your District',
                    style: TextStyle(
                      color: Color(0xFF630B0B),
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  margin: EdgeInsets.only(left: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(left: 30),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFCDCD),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButton<String>(
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 40,
                        dropdownColor: Color(0xFFFDD3D3),
                        style: TextStyle(color: Color(0xFF710B0B)),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>[
                          'Kasargod  ',
                          'Kannur  ',
                          'Wayanad   ',
                          'Kozhikode ',
                          'Kannur                                                   ',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigationPage(String page) {
    Navigator.of(context).pushReplacementNamed(page);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        navigationPage('/Login');
      },
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: Color(0xFF940000),
            ),
            Image.asset('images/cheg.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image.asset('images/symbol.png'),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'LDF വരും, \nഎല്ലാം \nശരിയാകും.',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Color(0x99FF9C9C), fontSize: 40),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CircularProgressIndicator(
                  valueColor:
                      new AlwaysStoppedAnimation<Color>(Color(0xFF600000)),
                  strokeWidth: 5,
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
                  child: Center(
                      child: Text(
                    'വരും എല്ലാം ശരിയാകും.',
                    style: TextStyle(
                      color: Color(0x99FFFFFF),
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
                SizedBox(
                  height: 43,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
