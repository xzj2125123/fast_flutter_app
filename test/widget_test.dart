// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:xzj_fast_flutter_app/main.dart';
import 'package:xzj_fast_flutter_app/net/ParameterUtils.dart';

void main() {
  //hC8HflqwiZ5ppWXIC4mzcsQBonNA7Q72dtgotCr1JbhUtaGqKgsId6Wurj2XHY07A9NxhWs6ZwDtLi3SG2402w==
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    var string=  ParameterUtils.ebncrypDataCopy({
      "channel_id": "1"}, "291557", 1591421097116);
    print("------------------$string------------------------");
  });
}
