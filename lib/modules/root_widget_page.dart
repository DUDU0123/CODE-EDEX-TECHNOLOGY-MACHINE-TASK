import 'package:codeedex_machine_test_app/modules/app_dashboard/app_dashboard.dart';
import 'package:codeedex_machine_test_app/modules/login/pages/login_page.dart';
import 'package:codeedex_machine_test_app/services/shared_prefs_service.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';

class RootWidgetPage extends StatelessWidget {
  const RootWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: AppColors.kLightGrey,
          ),
          home: (SharedPrefsService.getIsUserLoggedIn() ?? false)  ? AppDashboard() : LoginPage(),
        );
      },
    );
  }
}
