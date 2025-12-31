import 'package:codeedex_machine_test_app/modules/home/controller/home_page_controller.dart';
import 'package:codeedex_machine_test_app/modules/login/pages/login_page.dart';
import 'package:codeedex_machine_test_app/services/shared_prefs_service.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () async {
          await SharedPrefsService.setUserToken(userTokenValue: '');
          await SharedPrefsService.setIsUserLoggedIn(value: false);
          Get.offUntil(MaterialPageRoute(builder: (context) {
            return LoginPage();
          },), (route) => false,);
          Get.find<HomePageController>().updateCurrentIndex(index: 0);
        }, child: Text("Logout")),
      ),
    );
  }
}