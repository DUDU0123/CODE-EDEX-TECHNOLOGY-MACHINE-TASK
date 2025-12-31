import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/constants/app_constraints.dart';

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
