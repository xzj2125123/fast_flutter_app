import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xzj_fast_flutter_app/bean/UserBean.dart';

import 'BaseResp.dart';
import 'DioUtl.dart';
import 'ParameterUtils.dart';

class HttpUtils {
  static Future post<T>(String url,
      {Map<String, dynamic> data,
      Function onSuccessful(T t),
      Function printError(String e)}) async {
    var options = getOptions();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var time = DateTime.now().millisecondsSinceEpoch;
    var uid = prefs.getString('uid') ?? 150.toString();
    var parames = ParameterUtils.encryptData(data,  uid,  time);
    var s="/{$}";
    var sign = "{'data': + $parames + }&"+"+$+uid+"&/$"+time";
    var signStr = sha1.convert(utf8.encode(sign));
    options.headers.addAll({"sign": signStr});
    BaseResp<T> baseResp = await DioUtil()
        .request<T>(Method.post, url, data:{"data":parames} , options: options);
    T t;
    if (baseResp.code == 200) {
      if (baseResp.data != null) {
        onSuccessful(t);
      } else {
        printError('暂无数据');
      }
    }
    printError(baseResp.message);
  }

  static Options getOptions() {
    return Options(
        method: Method.post,
        responseType: ResponseType.json,
        contentType: ContentType.parse("application/json; charset=utf-8"));
  }
}
