import 'package:ganga/services/network_layer/request_response_type.dart';
import 'package:ganga/utils/app_keys.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:timeago/timeago.dart' as timeago;
part 'rating_model.g.dart';

@JsonSerializable()
class StageRatingModel with JSONParseable {
  StageRatingModel({
    this.id,
    this.rate,
    this.comment,
    this.createdAt,
    this.participantDetail,
  });

  @JsonKey(name: ApiKeys.id)
  String? id;
  double? rate;
  String? comment;
  DateTime? createdAt;
  @JsonKey(name: "participant_detail")
  ParticipantDetail? participantDetail;
  @JsonKey(ignore: true)
  String? get ago {
    // var time = timeago.format(createdAt ?? DateTime.now());
    return timeago.format(createdAt ?? DateTime.now());
  }

  static StageRatingModel creator() => StageRatingModel();

  @override
  Map<String, dynamic> toJson({ToJsonTFunction? toJsonT}) =>
      _$StageRatingModelToJson(this);

  @override
  factory StageRatingModel.fromJson(Map<String, dynamic> json,
      {FromJsonTFunction? fromJsonT}) =>
      _$StageRatingModelFromJson(json);

  @override
  StageRatingModel fromJSON(Map<String, dynamic> json) {
    return _$StageRatingModelFromJson(json);
  }

  @override
  mergeJson(Map<String, dynamic> json, FromJsonTFunction? fromJsonT) {
    var clone = StageRatingModel.fromJson(json, fromJsonT: fromJsonT);
    id = clone.id;
    rate = clone.rate;
    comment = clone.comment;
    createdAt = clone.createdAt;
    participantDetail = clone.participantDetail;
  }
}

@JsonSerializable()
class ParticipantDetail {
  ParticipantDetail({
    this.id,
    this.profilePicture,
    this.firstName,
    this.lastName,
    this.userType,
  });

  @JsonKey(name: ApiKeys.id)
  String? id;
  String? profilePicture;
  String? firstName;
  String? lastName;
  String? userType;

  @override
  Map<String, dynamic> toJson({ToJsonTFunction? toJsonT}) =>
      _$ParticipantDetailToJson(this);

  @override
  factory ParticipantDetail.fromJson(Map<String, dynamic> json,
      {FromJsonTFunction? fromJsonT}) =>
      _$ParticipantDetailFromJson(json);

  @override
  ParticipantDetail fromJSON(Map<String, dynamic> json) {
    return _$ParticipantDetailFromJson(json);
  }

  @override
  mergeJson(Map<String, dynamic> json, FromJsonTFunction? fromJsonT) {
    var clone = ParticipantDetail.fromJson(json, fromJsonT: fromJsonT);
    id = clone.id;
    profilePicture = clone.profilePicture;
    firstName = clone.firstName;
    lastName = clone.lastName;
    userType = clone.userType;
  }
}