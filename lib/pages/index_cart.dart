import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:xzj_fast_flutter_app/provide/UserProvide.dart';

class IndexCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.green[400],
            alignment: Alignment.center,
            child: Provide<UserProvide>(builder: (context, child, userProvide) {
              return Text("${userProvide.userBean.addressList}");
            })));
  }
}
