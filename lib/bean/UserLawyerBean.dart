class UserLawyerBean {
  String name;
  String mobile;
  String imToken;
  String attention;
  String fans;
  String collect;
  String goodsCount;
  String avatarId;
  String avatar;
  String realName;
  String active;
  String totalAmount;
  String delayTime;
  String version;
  String assistant;
  String addressList;
  int id;
  int type;
  int lawyerId;
  int shopId;
  int orderCount;
  int amount;
  int sex;
  int versionCode;
  LawyerBean lawyer;

  UserLawyerBean({this.name, this.mobile, this.imToken, this.attention, this.fans, this.collect, this.goodsCount, this.avatarId, this.avatar, this.realName, this.active, this.totalAmount, this.delayTime, this.version, this.assistant, this.addressList, this.id, this.type, this.lawyerId, this.shopId, this.orderCount, this.amount, this.sex, this.versionCode, this.lawyer});

  UserLawyerBean.fromJson(Map<String, dynamic> json) {    
    this.name = json['name'];
    this.mobile = json['mobile'];
    this.imToken = json['im_token'];
    this.attention = json['attention'];
    this.fans = json['fans'];
    this.collect = json['collect'];
    this.goodsCount = json['goods_count'];
    this.avatarId = json['avatar_id'];
    this.avatar = json['avatar'];
    this.realName = json['real_name'];
    this.active = json['active'];
    this.totalAmount = json['total_amount'];
    this.delayTime = json['delay_time'];
    this.version = json['version'];
    this.assistant = json['assistant'];
    this.addressList = json['address_list'];
    this.id = json['id'];
    this.type = json['type'];
    this.lawyerId = json['lawyer_id'];
    this.shopId = json['shop_id'];
    this.orderCount = json['order_count'];
    this.amount = json['amount'];
    this.sex = json['sex'];
    this.versionCode = json['versionCode'];
    this.lawyer = json['lawyer'] != null ? LawyerBean.fromJson(json['lawyer']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['im_token'] = this.imToken;
    data['attention'] = this.attention;
    data['fans'] = this.fans;
    data['collect'] = this.collect;
    data['goods_count'] = this.goodsCount;
    data['avatar_id'] = this.avatarId;
    data['avatar'] = this.avatar;
    data['real_name'] = this.realName;
    data['active'] = this.active;
    data['total_amount'] = this.totalAmount;
    data['delay_time'] = this.delayTime;
    data['version'] = this.version;
    data['assistant'] = this.assistant;
    data['address_list'] = this.addressList;
    data['id'] = this.id;
    data['type'] = this.type;
    data['lawyer_id'] = this.lawyerId;
    data['shop_id'] = this.shopId;
    data['order_count'] = this.orderCount;
    data['amount'] = this.amount;
    data['sex'] = this.sex;
    data['versionCode'] = this.versionCode;
    if (this.lawyer != null) {
      data['lawyer'] = this.lawyer.toJson();
    }
    return data;
  }

}

class LawyerBean {
  int lId;
  int lawyerUid;
  int shopId;

  LawyerBean({this.lId, this.lawyerUid, this.shopId});

  LawyerBean.fromJson(Map<String, dynamic> json) {    
    this.lId = json['l_id'];
    this.lawyerUid = json['lawyer_uid'];
    this.shopId = json['shop_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['l_id'] = this.lId;
    data['lawyer_uid'] = this.lawyerUid;
    data['shop_id'] = this.shopId;
    return data;
  }
}
