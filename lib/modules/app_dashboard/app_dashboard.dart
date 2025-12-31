import 'package:codeedex_machine_test_app/modules/home/controller/home_page_controller.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/home_page_bottom_navbar.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/home_page_small_widget.dart';

class AppDashboard extends StatelessWidget {
  const AppDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageSmallWidget.homePageAppBar(),

      body: GetBuilder<HomePageController>(
        builder: (homePageController) {
          return AppCommonMethods.pages[homePageController.currentIndex];
        },
      ),

      bottomNavigationBar: HomePageBottomNavBar(),
    );
  }
}


