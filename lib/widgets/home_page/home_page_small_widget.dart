import 'package:codeedex_machine_test_app/utils/app_imports.dart';

class HomePageSmallWidget {
  static AppBar homePageAppBar() {
    return AppBar(
      backgroundColor: AppColors.kAppPrimaryColor,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(AppAssets.appBarLogo, width: 45.w, height: 39.76.h),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(AppAssets.searchIcon, width: 24.w, height: 24.h),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(AppAssets.favIcon, width: 24.w, height: 24.h),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            AppAssets.notificationIcon,
            width: 24.w,
            height: 24.h,
          ),
        ),
      ],
    );
  }
}
