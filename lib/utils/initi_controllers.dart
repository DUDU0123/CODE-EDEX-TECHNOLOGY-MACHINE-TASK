import 'package:codeedex_machine_test_app/modules/home/controller/home_page_controller.dart';
import 'package:codeedex_machine_test_app/modules/login/controller/login_page_controller.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:dio/dio.dart';
Dio dio = Dio();
Future<void> initControllers() async {
  Get.put<LoginPageController>(LoginPageController());
  Get.put<HomePageController>(HomePageController());
}