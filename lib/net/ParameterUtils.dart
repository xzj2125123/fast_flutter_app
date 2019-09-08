import 'dart:convert';
import 'package:flutter_cipher/flutter_cipher.dart';
class ParameterUtils {
  static var password = "123456789abcdef0";
  static var iv=IV.fromLength(16);

  static  encodeParam(Map<String, dynamic> data,
      {String uid, int time, bool isEncode = true})  {
    if (isEncode) {
      return {'data': encryptData(data, uid, time)};
    }
    return data;
  }

  static String  encryptData(
      Map<String, dynamic> data, String uid, int time)  {
    data.addAll({"uid":uid,"time":time});
    String content = data.toString();
    Key key = Key.fromUtf8(password);
    Symmetry aes = Cipher.getSymmetryInstance(AES(key));
    var encrypted = aes.encrypt(utf8.encode(content),iv: iv);
    return encrypted.base64;
  }

  String encyptRSA(){
  }
}
