import 'dart:convert';
import 'package:encrypt/encrypt.dart';
import 'package:encrypt/encrypt.dart' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter_cipher/flutter_cipher.dart' as prefix1;
import 'package:flutter_test/flutter_test.dart';

import 'package:xzj_fast_flutter_app/net/ParameterUtils.dart';
import 'package:flutter_cipher/flutter_cipher.dart';
void main() {
   const String keys = "123456789abcdef0";
  //hC8HflqwiZ5ppWXIC4mzcsQBonNA7Q72dtgotCr1JbhUtaGqKgsId6Wurj2XHY07A9NxhWs6ZwDtLi3SG2402w==
   testWidgets('Counter increments smoke test', (WidgetTester tester)  {
    String content = json.encode( {"channel_id": "1","uid":"291557","time":"1591421097116"});
    try {
      print("------------------$content------------------------");
      final key = prefix0.Key.fromUtf8(keys);
      final encrypter = Encrypter(prefix0.AES(key, mode: prefix0.AESMode.cbc));
      final encrypted = encrypter.encrypt(content, iv: prefix0.IV.fromUtf8(keys));
      print("------------------$encrypted------------------------");
      print("------------------${encrypted.base64}------------------------");
    } catch (err) {
      print("aes encode error:$err");
      print("------------------$content------------------------");
    }

    prefix1.Key key = prefix1.Key.fromUtf8(keys);
    Symmetry aes = Cipher.getSymmetryInstance(prefix1.AES(key));
    var encrypted = aes.encrypt(utf8.encode(content),iv: prefix1.IV.fromUtf8(keys));

    print("------------------${encrypted.base64}------------------------");
  });

}
