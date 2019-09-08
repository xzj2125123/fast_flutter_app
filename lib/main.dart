import 'package:flutter/material.dart';
import 'pages/index_cart.dart';
import 'pages/index_home.dart';
import 'pages/index_shop.dart';
import 'pages/index_my.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '银港水晶城',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('主页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      title: Text('商品'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      title: Text('购物车'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: Text('我的'),
    )
  ];
  final List tabs = [
    IndexHomePage(),
    IndexShopPage(),
    IndexCartPage(),
    IndexMyPage()
  ];
  var currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    currentPage = tabs[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '银港水晶城',
          style: TextStyle(fontSize: 18, color: Colors.yellow),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.grey[400],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentPage = tabs[currentIndex];
          });
        },
        items: bottomTabs,
      ),
      body: currentPage,
    );
  }
}
