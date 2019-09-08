import 'package:dio/dio.dart';

class BaseRespR<T> {
  String status;
  int code;
  String message;
  T data;
  Response response;

  BaseRespR(this.status, this.code, this.message, this.data, this.response);

  @override
  String toString() {
    StringBuffer sb = new StringBuffer('{');
    sb.write("\"status\":\"$status\"");
    sb.write(",\"code\":$code");
    sb.write(",\"message\":\"$message\"");
    sb.write(",\"data\":\"$data\"");
    sb.write('}');
    return sb.toString();
  }
}