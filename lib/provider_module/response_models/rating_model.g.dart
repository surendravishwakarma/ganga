// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StageRatingModel _$StageRatingModelFromJson(Map<String, dynamic> json) =>
    StageRatingModel(
      id: json['_id'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      comment: json['comment'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      participantDetail: json['participant_detail'] == null
          ? null
          : ParticipantDetail.fromJson(
              json['participant_detail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StageRatingModelToJson(StageRatingModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'rate': instance.rate,
      'comment': instance.comment,
      'createdAt': instance.createdAt?.toIso8601String(),
      'participant_detail': instance.participantDetail,
    };

ParticipantDetail _$ParticipantDetailFromJson(Map<String, dynamic> json) =>
    ParticipantDetail(
      id: json['_id'] as String?,
      profilePicture: json['profilePicture'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userType: json['userType'] as String?,
    );

Map<String, dynamic> _$ParticipantDetailToJson(ParticipantDetail instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'profilePicture': instance.profilePicture,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userType': instance.userType,
    };
