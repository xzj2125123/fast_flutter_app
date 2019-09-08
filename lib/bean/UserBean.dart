class UserBean   {
  String mobile;
  String name;
  String type;
  String channelId;
  String status;
  String avatar;
  String addressList;
  int id;

  UserBean({this.mobile, this.name, this.type, this.channelId, this.status, this.avatar, this.addressList, this.id});

  UserBean.fromJson(Map<String, dynamic> json) {
    this.mobile = json['mobile'];
    this.name = json['name'];
    this.type = json['type'];
    this.channelId = json['channel_id'];
    this.status = json['status'];
    this.avatar = json['avatar'];
    this.addressList = json['address_list'];
    this.id = json['id'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile'] = this.mobile;
    data['name'] = this.name;
    data['type'] = this.type;
    data['channel_id'] = this.channelId;
    data['status'] = this.status;
    data['avatar'] = this.avatar;
    data['address_list'] = this.addressList;
    data['id'] = this.id;
    return data;
  }


}
