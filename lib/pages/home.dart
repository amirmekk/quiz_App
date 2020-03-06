import 'package:flutter/material.dart';
import 'package:routing/data/tawarikh.dart';
import 'package:routing/pages/Chakhsiyat.dart';
import 'package:routing/pages/Mostala7at.dart';
import 'package:routing/pages/Tawarikh.dart';
import 'package:routing/tools/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> _pages = [
    Tawarikh(),
    Chakhsiyat(),
    Mostala7at(),
  ];
  List _colors = [Colors.amber[800], Colors.blue, Colors.amber[800]];
  void _onItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: IconButton(
                  icon: Icon(Icons.search, size: 40),
                  onPressed: () {
                  showSearch(
                      context: context, delegate: DataSearch(data: tawarikh));
                },
                ),
              ),
            )
          ],
          title: Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Text('مرحبا ،',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
          ),
          elevation: 0.0,
          backgroundColor: Colors.grey[50],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 30, 5),
              child: Text(
                'الوحدات',
                style: TextStyle(
                    fontFamily: 'Amiri',
                    fontSize: 25,
                    color: _colors[_selectedIndex],
                    fontWeight: FontWeight.bold),
              ),
            ),
            _pages[_selectedIndex],
            SizedBox(
              height: 20,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text('تواريخ'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('شخصيات'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text('مصطلحات'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTaped,
        ),
      ),
    );
  }
}
