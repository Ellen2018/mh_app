import 'package:flutter/material.dart';

class MainPageApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '主界面',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return MainState();
  }

}

class MainState extends State<MainPage>{

  int _index = 0;
  final List<String> texts = List();

  @override
  Widget build(BuildContext context) {
    
    initData();
    return Scaffold(
      appBar: AppBar(title: Text('主界面'),),
      body: Center(
        child: Text('${texts[_index]}',style: TextStyle(fontSize: 50),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.android),title: Text('导航1')),
          BottomNavigationBarItem(icon: Icon(Icons.chat),title: Text('导航2')),
          BottomNavigationBarItem(icon: Icon(Icons.contacts),title: Text('导航3')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text('导航4')),
        ],
        currentIndex: _index,
        selectedItemColor: Color(0xFFF12E49),
        unselectedItemColor: Color(0xFF898A8D),
        onTap: (index){
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }

  void initData() {
    texts.add('导航页1');
    texts.add('导航页2');
    texts.add('导航页3');
    texts.add('导航页4');
  }

}