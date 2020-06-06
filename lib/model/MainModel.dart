import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:xzj_fast_flutter_app/bean/UserBean.dart';
import 'package:xzj_fast_flutter_app/net/BaseResp.dart';
import 'package:xzj_fast_flutter_app/net/DioUtl.dart';
import 'package:xzj_fast_flutter_app/net/HttpUtils.dart';
import 'package:xzj_fast_flutter_app/net/Urls.dart';

class MainModelControl {
  MainModelControl();

  MainModelControl _MainModelControl;

  MainModelControl.getInstans() {
    if (null == _MainModelControl) {
      _MainModelControl = new MainModelControl();
    }
  }

  /**
   * 登陆
   */
  Future<UserBean> logion(String mobile, String code,
      {Function onSuccessful(UserBean bean), BuildContext context}) async {
    HttpUtils.post<Map<String, String>>(Urls.USER_GETINFO,data:{"channel_id":"1"},
        onSuccessful: (t) {
      if (onSuccessful != null) onSuccessful(UserBean.fromJson(t));
    }, printError: (s) {
      Fluttertoast.showToast(msg: s);
    });
  }
}
