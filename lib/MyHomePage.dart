import 'package:flutter/material.dart';
import 'first_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final List<Widget> child = [
    Container(child: Center(child: Text('Last Page'))),
    FirstPage(),
    Container(child: Center(child: Text('Last Page'))),
    Container(child: Center(child: Text('Last Page'))),
    Container(child: Center(child: Text('Last Page'))),
  ];
  final String text =
      'വെള്ളക്കെട്ട് വിഷയത്തിൽ നഗരസഭ വേണ്ട നടപടി സ്വീകരിച്ചില്ലെങ്കിൽ കലക്ടർക്ക് ദുരന്ത നിവാരണ നിയമപ്രകാരം';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDEDED),
      appBar: AppBar(
        backgroundColor: Color(0xFF500000),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 4, 0, 6),
          child: SizedBox(
            height: kToolbarHeight,
            child: Image.asset(
              'images/symbol2.png',
              color: Colors.white,
            ),
          ),
        ),
        actionsIconTheme: IconThemeData.fallback(),
        actions: <Widget>[
          Container(
            child: Center(
              child: Text(
                'English',
                style: TextStyle(color: Color(0xFF500000)),
              ),
            ),
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Color(0xFFFEDCDC),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(width: 5),
          ImageIcon(
            AssetImage('images/question.png'),
            color: Colors.white,
            size: 35,
          ),
          SizedBox(
            width: 7,
          ),
        ],
      ),
      body: child[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellow,
        iconSize: 35,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF500000),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/home.png"),
              size: 40,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/portal.png"),
              size: 40,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/explore.png"),
              size: 47,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/news.png"),
              size: 40,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/news.png"),
              size: 40,
            ),
            title: Container(),
          ),
        ],
      ),
    );
  }
}
