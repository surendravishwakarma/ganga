// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) =>
    UserInfoModel(
      userid: json['userid'] as String?,
      usercode: json['usercode'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
      opassword: json['opassword'] as String?,
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      usertype: json['usertype'] as String?,
      roleid: json['roleid'] as String?,
      state: json['state'] as String?,
      profileimagepath: json['profileimagepath'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$UserInfoModelToJson(UserInfoModel instance) =>
    <String, dynamic>{
      'userid': instance.userid,
      'usercode': instance.usercode,
      'name': instance.name,
      'password': instance.password,
      'opassword': instance.opassword,
      'mobile': instance.mobile,
      'email': instance.email,
      'address': instance.address,
      'address2': instance.address2,
      'city': instance.city,
      'usertype': instance.usertype,
      'roleid': instance.roleid,
      'state': instance.state,
      'profileimagepath': instance.profileimagepath,
      'token': instance.token,
    };
