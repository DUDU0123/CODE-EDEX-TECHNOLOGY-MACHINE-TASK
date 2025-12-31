import 'package:codeedex_machine_test_app/models/home_response_model.dart';
import 'package:codeedex_machine_test_app/services/home/home_service.dart';
import 'package:codeedex_machine_test_app/services/shared_prefs_service.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';

class HomePageController extends GetxController{
  int currentIndex = 0;
  final HomeService service = HomeService();
  HomeResponseModel? homeData;

  void updateCurrentIndex({required int index}) {
    currentIndex = index;
    update();
  }

  bool isLoading = true;

  Future<void> loadHome() async {
    isLoading = true;
    update();

    homeData = await service.getHomeData(
      id: "LL1",
      token: SharedPrefsService.getUserToken() ?? '',
    );

    isLoading = false;
    update();
  }
}