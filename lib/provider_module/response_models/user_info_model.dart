import 'package:ganga/services/network_layer/request_response_type.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_info_model.g.dart';

@JsonSerializable()
class UserInfoModel with JSONParseable {
  UserInfoModel({
    this.userid,
    this.usercode,
    this.name,
    this.password,
    this.opassword,
    this.mobile,
    this.email,
    this.address,
    this.address2,
    this.city,
    this.usertype,
    this.roleid,
    this.state,
    this.profileimagepath,
    this.token,
  });

  String? userid;
  String? usercode;
  String? name;
  String? password;
  String? opassword;
  String? mobile;
  String? email;
  String? address;
  String? address2;
  String? city;
  String? usertype;
  String? roleid;
  String? state;
  String? profileimagepath;
  String? token;

  static UserInfoModel creator() => UserInfoModel();

  @override
  Map<String, dynamic> toJson({ToJsonTFunction? toJsonT}) =>
      _$UserInfoModelToJson(this);

  @override
  factory UserInfoModel.fromJson(Map<String, dynamic> json,
          {FromJsonTFunction? fromJsonT}) =>
      _$UserInfoModelFromJson(json);

  @override
  UserInfoModel fromJSON(Map<String, dynamic> json) {
    return _$UserInfoModelFromJson(json);
  }

  @override
  mergeJson(Map<String, dynamic> json, FromJsonTFunction? fromJsonT) {
    var clone = UserInfoModel.fromJson(json, fromJsonT: fromJsonT);
    userid = clone.userid;
    usercode = clone.usercode;
    name = clone.name;
    password = clone.password;
    opassword = clone.opassword;
    mobile = clone.mobile;
    email = clone.email;
    address = clone.address;
    address2 = clone.address2;
    city = clone.city;
    usertype = clone.usertype;
    roleid = clone.roleid;
    state = clone.state;
    profileimagepath = clone.profileimagepath;
    token = clone.token;
  }
}
