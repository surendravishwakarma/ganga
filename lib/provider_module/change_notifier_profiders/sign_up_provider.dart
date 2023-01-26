import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ganga/provider_module/response_models/signup_model.dart';
import 'package:ganga/services/network_layer/api_client.dart';
import 'package:ganga/services/network_layer/end_point_config.dart';
import 'package:ganga/utils/app_keys.dart';
import 'package:ganga/utils/app_preferences.dart';
import 'package:ganga/utils/app_routes.dart';
import 'package:ganga/utils/global.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpProvider with ChangeNotifier {
  final nameController = TextEditingController();
  final emailControllerSignup = TextEditingController();
  final userMobileNumberSignup = TextEditingController();
  final userType = TextEditingController();
  GlobalKey<FormState> formKeySignup = GlobalKey<FormState>();
  bool isLoading = true;
  final APIClient _apiClient = APIClient();
  SignUpModel _signUpModel = SignUpModel();

  SignUpModel? get signUpModel => _signUpModel;
  final emailControllerSignin = TextEditingController();
  final passwordControllerSignin = TextEditingController();
  GlobalKey<FormState> formKeySignIn = GlobalKey<FormState>();
  bool passwordVisible = true;

  Future<void> signupSendOtp(
    BuildContext context,
    String firstName,
    String email,
    String phoneNumber,
    String userType,
  ) async {
    Map<String, dynamic> params = {
      ApiKeys.name: firstName,
      ApiKeys.email: email,
      ApiKeys.mobile: phoneNumber,
      ApiKeys.userType: userType,
    };
    var response = await _apiClient.makeRequest<SignUpModel>(
        endPoint: Endpoints.signUp,
        requestPayloadBody: params,
        creator: SignUpModel.creator);
    if (response?.code == 200) {
      _signUpModel = response?.data ?? SignUpModel();
      String name = _signUpModel.name ?? '';
      String uniqueid = _signUpModel.uniqueid ?? '';
      String email = _signUpModel.email ?? '';
      String mobile = _signUpModel.mobile ?? '';
      print('$name $uniqueid $email $mobile');
      if (response?.data != null) {
        if (response?.data?.uniqueid != null) {
          String uerId = response!.data!.uniqueid!;
          var pref = await SharedPreferences.getInstance();
          pref.setString(AppPreferenceKeys.UNIQUEID, uerId);
          if (uerId.isNotEmpty) {
            bool login = true;
            AppPreferences().setBool(AppPreferenceKeys.loggedIn, login);
          }
        }
      }
      navigatorKey.currentState?.pushNamed(AppRoutes.otpScreen);
    }
    notifyListeners();
  }

  Future<void> loginSendOtp(
    BuildContext context,
    String userCode,
  ) async {
    Map<String, dynamic> params = {
      ApiKeys.userCode: userCode,
    };
    var response = await _apiClient.makeRequest<SignUpModel>(
        endPoint: Endpoints.loginSendOtp,
        requestPayloadBody: params,
        creator: SignUpModel.creator);
    if (response?.code == 200) {
      _signUpModel = response?.data ?? SignUpModel();
      if (response?.data != null) {
        if (response?.data?.uniqueid != null) {
          String uniqueId = response!.data!.uniqueid!;
          print('uniqueId>>>$uniqueId');
        }
      }
      navigatorKey.currentState?.pushNamed(AppRoutes.otpScreen);
    }
    notifyListeners();
  }
}
// switch (response?.success) {
//   case true:
//     print(response?.data);
//     loginResponse = response?.data;
//     notifyListeners();
//     // navigatorKey.currentState
//     //     ?.pushNamed(AppRoutes.professionalGoalSelection);
//     break;
//   default:
//     {
//       AppPopUp.showFailureAlert(message: "response?.msg "?? "");
//     }
//     break;
// }
