
import 'package:flutter/material.dart';
import 'package:xzj_fast_flutter_app/bean/UserBean.dart';
import 'package:xzj_fast_flutter_app/bean/UserBean.dart';
import 'package:xzj_fast_flutter_app/bean/UserLawyerBean.dart';
import 'package:xzj_fast_flutter_app/model/MainModel.dart';

class UserProvide  with ChangeNotifier{
  UserLawyerBean userBean;
  upAddCount(){
    MainModelControl.getInstans().logion("18569662755", "1234",onSuccessful: (UserBean bean){
    });
    notifyListeners();
  }
}