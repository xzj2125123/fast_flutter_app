class BaseResp<T> {
  String status;
  int code;
  String message;
  T data;

  BaseResp(this.status, this.code, this.message, this.data);

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