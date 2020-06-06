import 'dart:convert';
import 'package:cipher2/cipher2.dart';
import 'package:flutter_cipher/flutter_cipher.dart';
import 'package:flutter_string_encryption/flutter_string_encryption.dart';
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
    String content = json.encode(data);
    print("------------------$content------------------------");
    Key key = Key.fromUtf8(password);
    Symmetry aes = Cipher.getSymmetryInstance(AES(key));
    var encrypted = aes.encrypt(utf8.encode(content),iv: iv);
    return encrypted.base64;
  }
  static Future ebncrypDataCopy( Map<String, dynamic> data, String uid, int time)async{
    data.addAll({"uid":uid,"time":time});
    String content = json.encode(data);
    print("------------------$content------------------------");
    var cryptor = new PlatformStringCryptor();
     String salt = await cryptor.generateSalt();
     String key = await cryptor.generateKeyFromPassword(password, salt);
    return cryptor.encrypt(content, key);
}

}
