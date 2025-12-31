import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/constants/app_constraints.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/common_product_heading.dart';
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
    return Column(
      children: [
        AdvertisementWidget(headingText: "yghjk", startTxt: "hvjhjlmcgfguhijk",image:  AppAssets.almondsThreeSet,),
        AppConstraints.kHeight10,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CommonProductHeadingWidget(heading: "Categories"),
        ),
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
      ],
    );
  }
}

class AdvertisementWidget extends StatelessWidget {
  const AdvertisementWidget({
    super.key, required this.startTxt, required this.headingText, required this.image,
  });
  final String startTxt;
  final String headingText;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, top: 10.h, bottom: 10.h),
      width: AppConstraints.kScreenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        gradient: LinearGradient(
          colors: [AppColors.kOrangeDark, AppColors.kOrangeLight],
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              image,
              height: 177.h,
              width: 200.w,
            ),
          ),
          SizedBox(
            width: 263.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  startTxt,
                  style: AppCommonMethods.commonTextStyle(
                    color: AppColors.kWhite,
                    fontSize: 12.sp,
                  ),
                ),
                AppConstraints.kHeight10,
                SizedBox(
                  width: 263,
                  child: Text(
                    headingText,
                    style: AppCommonMethods.commonTextStyle(
                      color: AppColors.kWhite,
                      fontFamily: AppAssets.lugfaMediumFont,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                AppConstraints.kHeight10,
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Shop Now",
                    style: AppCommonMethods.commonTextStyle(
                      color: AppColors.kOrangeDark,
                      fontFamily: AppAssets.lugfaMediumFont,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
