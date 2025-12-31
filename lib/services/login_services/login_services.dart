import 'package:codeedex_machine_test_app/services/shared_prefs_service.dart';
import 'package:codeedex_machine_test_app/utils/constants/backend_constants.dart';
import 'package:codeedex_machine_test_app/utils/initi_controllers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class LoginServices {
  static Future<bool> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        "${BackendConstants.baseUrl}/login",
        data: FormData.fromMap({
          "email_phone": email,
          "password": password,
        }),
        options: Options(
          headers: {
            "Accept": "application/json",
          },
        ),
      );

      if (response.statusCode == 200) {
        final userToken = response.data["customerdata"]["token"];
        SharedPrefsService.setUserToken(userTokenValue: userToken);
        return true;
      } else {
        return false;
      }
    } on DioException catch (e) {
      debugPrint("Login error: ${e.response?.data}");
      return false;
    } catch (e) {
      debugPrint("Unexpected error: $e");
      return false;
    }
  }
}
