import 'package:flutter/cupertino.dart';
import 'package:ganga/provider_module/response_models/signup_model.dart';
import 'package:ganga/services/network_layer/api_client.dart';
import 'package:ganga/services/network_layer/end_point_config.dart';

class CaseStudyProvider with ChangeNotifier {
  final APIClient _apiClient = APIClient();

  Future<void> createCourse(
    BuildContext context,
  ) async {
    Map<String, dynamic> mapRequest = {
      'faculty_id': 28,
      'category_id': 1,
      'page_no': 0
    };
    //SignUpModel create new for case study
    var response = await _apiClient.makeListRequest<SignUpModel>(
      endPoint: Endpoints.caseStudyList,
      payload: mapRequest,
    );
    if (response.code == 200) {
      String dataName = response.data.toString();
      if (response.data != null) {

      }

    }
    notifyListeners();
  }
}
