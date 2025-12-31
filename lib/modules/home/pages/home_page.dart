import 'package:carousel_slider/carousel_slider.dart';
import 'package:codeedex_machine_test_app/modules/home/controller/home_page_controller.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/constants/app_constraints.dart';
import 'package:codeedex_machine_test_app/widgets/app_common_button_widget.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/common_product_heading.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/home_top_auto_play_carousel.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/product_circular_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppConstraints.kHeight14,
          HomeTopAutoPlayCarousel(),
          AppConstraints.kHeight10,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: CommonProductHeadingWidget(heading: "Categories"),
          ),
          AppConstraints.kHeight10,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                AppCommonMethods.unpolishedProducts.length,
                (index) {
                  return ProductCircularWidget(
                    text: AppCommonMethods.unpolishedProducts[index],
                    padding: EdgeInsets.symmetric(horizontal: 5),
                  );
                },
              ),
            ),
          ),
          AppConstraints.kHeight15,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: CommonProductHeadingWidget(heading: "Featured Products"),
          ),
          AppConstraints.kHeight10,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: const Color.fromARGB(255, 83, 81, 81),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.kWhite,
                  ),
                  child: Image.asset(
                    AppAssets.almondsThreeSet,
                    width: 150.w,
                    height: 100.h,
                  ),
                ),
                AppConstraints.kHeight10,
                Text(
                  "Flours & Sugars",
                  style: AppCommonMethods.commonTextStyle(fontSize: 10.sp),
                ),
                AppConstraints.kHeight5,
                Text(
                  "Light pink salt 1 kg",
                  style: AppCommonMethods.commonTextStyle(
                    fontSize: 12.sp,
                    fontFamily: AppAssets.lugfaMediumFont,
                  ),
                ),
                AppConstraints.kHeight5,
                Row(
                  children: [
                    Text(
                      "\u20B9 600",
                      style: AppCommonMethods.commonTextStyle(
                        fontSize: 12.sp,
                        fontFamily: AppAssets.lugfaMediumFont,
                      ),
                    ),
                    AppConstraints.kWidth10,
                    Text(
                      "\u20B9 80.00",
                      style: AppCommonMethods.commonTextStyle(
                        fontSize: 12.sp,
                        fontFamily: AppAssets.lugfaMediumFont,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    AppConstraints.kHeight10,
                    AppCommonButtonWidget(
                      btnWidth: 100,
                      btnText: "Add", btnColor: AppColors.kWhite, btnRadius: 5.r, btnPadding: EdgeInsets.symmetric(horizontal: 100, ), btnTextColor: AppColors.kAppPrimaryColor, textAlign: TextAlign.center)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
