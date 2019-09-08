import 'package:flutter/material.dart';
import 'package:xzj_fast_flutter_app/bean/UserBean.dart';
import 'package:xzj_fast_flutter_app/model/MainModel.dart';

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
    MainModelControl.getInstans().logion("18569662755", "1234",onSuccessful: (UserBean userBean){
      setState(() {
        bean = userBean;
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.red[400],
          alignment: Alignment.center,
          child: Text(bean.toString())),
    );
  }
}
