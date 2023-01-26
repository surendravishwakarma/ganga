import 'package:flutter/material.dart';
import 'package:ganga/provider_module/response_models/user_info_model.dart';
import 'package:ganga/services/network_layer/api_client.dart';
import 'package:ganga/services/network_layer/end_point_config.dart';
import 'package:ganga/utils/app_keys.dart';
import 'package:ganga/utils/app_routes.dart';
import 'package:ganga/utils/global.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OtpProvider with ChangeNotifier {
  final emailController = TextEditingController();
  final otpController = TextEditingController();
  final formKeyForgot = GlobalKey<FormState>();
  final formKeyReset = GlobalKey<FormState>();
  final formKeyVerifyOtp = GlobalKey<FormState>();
  final APIClient _apiClient = APIClient();
  UserInfoModel _userInfoModel = UserInfoModel();
  UserInfoModel get signUpModel => _userInfoModel;

  var otpValue;
  bool signInDisable = false;

  otpButtonEnable(bool isUpdated) {
    signInDisable = isUpdated;
    notifyListeners();
  }

  Future<void> callOTPVerifyApi(
    BuildContext context,
    String otp,
    String id,
  ) async {
    Map<String, dynamic> requestParams = {
      ApiKeys.latestId: id,
      ApiKeys.otp: otp,
    };
    var response = await _apiClient.makeRequest<UserInfoModel>(
        endPoint: Endpoints.otp,
        requestPayloadBody: requestParams,
        creator: UserInfoModel.creator);

    if (response?.code == 200) {
      String mobile = await response?.data?.mobile ?? '';
      String userid=await response?.data?.userid??'';
      String userCode = await response?.data?.usercode ?? '';
      String usertype=await response?.data?.usertype??'';
      String token=await response?.data?.token??'';
      _userInfoModel = await response?.data??UserInfoModel();
      var pref= await SharedPreferences.getInstance();
      pref.setString(AppPreferenceKeys.UNIQUEID, mobile);
      pref.setString(AppPreferenceKeys.userId, userid);
      pref.setString(AppPreferenceKeys.userCode, userCode);
      pref.setString(AppPreferenceKeys.usertype, usertype);
      pref.setString(AppPreferenceKeys.accessToken, token);
      navigatorKey.currentState
          ?.pushReplacementNamed(AppRoutes.homeScreen, arguments: false);
    }
    notifyListeners();
  }
}
