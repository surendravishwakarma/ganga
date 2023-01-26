// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpModel _$SignUpModelFromJson(Map<String, dynamic> json) => SignUpModel(
      uniqueid: json['uniqueid'] as String?,
      name: json['name'] as String?,
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$SignUpModelToJson(SignUpModel instance) =>
    <String, dynamic>{
      'uniqueid': instance.uniqueid,
      'name': instance.name,
      'mobile': instance.mobile,
      'email': instance.email,
    };
