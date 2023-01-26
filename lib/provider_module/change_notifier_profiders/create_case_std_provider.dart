import 'package:flutter/cupertino.dart';
import 'package:ganga/services/network_layer/api_client.dart';
import 'package:ganga/services/network_layer/end_point_config.dart';
import 'package:ganga/utils/app_common_popup.dart';

class CreateCaseProvider with ChangeNotifier {
  final APIClient _apiClient = APIClient();
  GlobalKey<FormState> formKeyCreateStudy = GlobalKey<FormState>();

  Future<void> createCourse(
    BuildContext context,
    Map<String, dynamic> mapRequest,
  ) async {

    print("requestMap=>>${mapRequest.toString()}");


    var response = await _apiClient.makeRequest(
      endPoint: Endpoints.createCourse,
      requestPayloadBody: mapRequest,
    );
    if (response?.code == 200) {
      String dataName = response!.data.toString();
      if (response.data != null) {
        AppPopUp.showSuccessToast(message: 'Created Course Successfully');
      }
     // navigatorKey.currentState?.pushNamed(AppRoutes.caseStudyList);
    }
    notifyListeners();
  }
}
