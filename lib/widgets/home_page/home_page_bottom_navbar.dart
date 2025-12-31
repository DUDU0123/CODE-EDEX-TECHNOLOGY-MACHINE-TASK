import 'package:codeedex_machine_test_app/modules/home/controller/home_page_controller.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:flutter_svg/svg.dart';

class HomePageBottomNavBar extends StatelessWidget {
  const HomePageBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      builder: (homePageController) {
        return Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            currentIndex: homePageController.currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.kAppPrimaryColor,
            unselectedItemColor: AppColors.kGrey,
            unselectedLabelStyle: AppCommonMethods.commonTextStyle(
              fontSize: 14.sp,
            ),
            selectedLabelStyle: AppCommonMethods.commonTextStyle(
              fontSize: 14.sp,
            ),
            showSelectedLabels: true,
            showUnselectedLabels: true,
    
            onTap: (index) {
              homePageController.updateCurrentIndex(index: index);
            },
    
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.homeIconSvg,
                  colorFilter: ColorFilter.mode(
                    homePageController.currentIndex == 0
                        ? AppColors.kAppPrimaryColor
                        : AppColors.kGrey,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AppAssets.categoryIcon,
                  width: 30.w,
                  height: 30.h,
                ),
                label: "Categories",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AppAssets.cartIcon,
                  width: 30.w,
                  height: 30.h,
                ),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AppAssets.profileIcon,
                  width: 30.w,
                  height: 30.h,
                ),
                label: "Profile",
              ),
            ],
          ),
        );
      },
    );
  }
}
