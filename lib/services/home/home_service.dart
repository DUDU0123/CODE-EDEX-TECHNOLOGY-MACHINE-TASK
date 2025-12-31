import 'package:codeedex_machine_test_app/models/home_response_model.dart';
import 'package:codeedex_machine_test_app/utils/constants/backend_constants.dart';
import 'package:codeedex_machine_test_app/utils/initi_controllers.dart';

class HomeService {

  Future<HomeResponseModel?> getHomeData({
    required String id,
    required String token,
    String lang = "en",
  }) async {
    try {
      final response = await dio.post("${BackendConstants.baseUrl}/home/$lang",
        queryParameters: {
          "id": id,
          "token": token,
        },
      );

      return HomeResponseModel.fromJson(response.data);
    } catch (e) {
      print("Error: ${e.toString()}");
      return null;
    }
  }
}
