import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:xzj_fast_flutter_app/bean/UserBean.dart';
import 'package:xzj_fast_flutter_app/model/MainModel.dart';
import 'package:xzj_fast_flutter_app/provide/UserProvide.dart';

class IndexHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<StatefulWidget> {
  UserBean bean;
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.red[400],
          alignment: Alignment.center,
          child: RaisedButton(
            onPressed: (){
              Provide.value<UserProvide>(context).upAddCount();
            },
            child: Text("点击获取用户数据"),
          )
      ),
    );
  }
}
