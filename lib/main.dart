import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:xzj_fast_flutter_app/provide/UserProvide.dart';
import 'pages/index_cart.dart';
import 'pages/index_home.dart';
import 'pages/index_shop.dart';
import 'pages/index_my.dart';

void main() {
  var provide=UserProvide();
  var provides =Providers();
  provides..provide(Provider<UserProvide>.value(provide));
  runApp(ProviderNode(child: MyApp(),providers: provides));
}

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
      title: Text('律师馆'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      title: Text('消息'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      title: Text('社区'),
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
          '律师馆',
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
