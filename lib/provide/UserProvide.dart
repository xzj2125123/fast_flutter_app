
import 'package:flutter/material.dart';
import 'package:xzj_fast_flutter_app/bean/UserBean.dart';
import 'package:xzj_fast_flutter_app/bean/UserBean.dart';
import 'package:xzj_fast_flutter_app/bean/UserLawyerBean.dart';
import 'package:xzj_fast_flutter_app/model/MainModel.dart';

class UserProvide  with ChangeNotifier{
  UserLawyerBean userBean;
  upAddCount(){
//    MainModelControl.getInstans().logion("18569662755", "1234",onSuccessful: (UserBean bean){
//    });
    userBean = UserLawyerBean.fromJson({
      "id": 146840,
      "name": "17621882355",
      "mobile": "17621882355",
      "im_token": "",
      "type": 3,
      "attention": "0",
      "fans": "0",
      "collect": "0",
      "goods_count": "11",
      "avatar_id": "20",
      "avatar": "/uploads/avatar/default.png",
      "lawyer_id": 82,
      "real_name": "黄振",
      "active": "1",
      "shop_id": 533,
      "order_count": 0,
      "total_amount": "0.00",
      "amount": 0,
      "delay_time": "8",
      "version": "12.5",
      "sex": 1,
      "lawyer": {
        "l_id": 594,
        "lawyer_uid": 176499,
        "shop_id": 303308
      },
      "versionCode": 101,
      "assistant": "1",
      "address_list": "1"
    }
    );
    notifyListeners();
  }
}