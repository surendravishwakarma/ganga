import 'package:ganga/services/network_layer/request_response_type.dart';
import 'package:json_annotation/json_annotation.dart';
part 'signup_model.g.dart';
@JsonSerializable()
class SignUpModel with JSONParseable{
  SignUpModel({
    this.uniqueid,
    this.name,
    this.mobile,
    this.email,
  });

  String? uniqueid;
  String? name;
  String? mobile;
  String? email;

  static SignUpModel creator() => SignUpModel();

  @override
  Map<String, dynamic> toJson({ToJsonTFunction? toJsonT}) =>
      _$SignUpModelToJson(this);

  @override
  factory SignUpModel.fromJson(Map<String, dynamic> json,
      {FromJsonTFunction? fromJsonT}) =>
      _$SignUpModelFromJson(json);

  @override
  SignUpModel fromJSON(Map<String, dynamic> json) {
    return _$SignUpModelFromJson(json);
  }

  @override
  mergeJson(Map<String, dynamic> json, FromJsonTFunction? fromJsonT) {
    var clone = SignUpModel.fromJson(json, fromJsonT: fromJsonT);
    uniqueid = clone.uniqueid;
    name = clone.name;
    mobile = clone.mobile;
    email = clone.email;
  }
}
