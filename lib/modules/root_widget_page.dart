import 'package:codeedex_machine_test_app/modules/login/pages/login_page.dart';
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
          home: LoginPage(),
        );
      },
    );
  }
}
