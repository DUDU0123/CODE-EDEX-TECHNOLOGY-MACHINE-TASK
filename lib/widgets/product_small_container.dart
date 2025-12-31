import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/constants/app_constraints.dart';
import 'package:codeedex_machine_test_app/widgets/app_common_button_widget.dart';
import 'package:flutter_svg/svg.dart';

class ProductSmallContainer extends StatelessWidget {
  const ProductSmallContainer({
    super.key, required this.productType, required this.productName, required this.productPrice, required this.oldPrice, this.margin,
  });

  final String productType;
  final String productName;
  final String productPrice;
  final String oldPrice;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 217.h,
      margin: margin,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color.fromARGB(255, 221, 220, 220),
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
            productType,
            style: AppCommonMethods.commonTextStyle(fontSize: 10.sp),
          ),
          AppConstraints.kHeight5,
          Text(
            productName,
            style: AppCommonMethods.commonTextStyle(
              fontSize: 12.sp,
              fontFamily: AppAssets.lugfaMediumFont,
            ),
          ),
          AppConstraints.kHeight5,
          Row(
            children: [
              Text(
                "\u20B9 $productPrice",
                style: AppCommonMethods.commonTextStyle(
                  fontSize: 12.sp,
                  fontFamily: AppAssets.lugfaMediumFont,
                ),
              ),
              AppConstraints.kWidth10,
              Text(
                "\u20B9 $oldPrice",
                style: AppCommonMethods.commonTextStyle(
                  fontSize: 12.sp,
                  fontFamily: AppAssets.lugfaMediumFont,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          Spacer(),
          AppCommonButtonWidget(
            fontSize: 12.sp,
            btnText: "Add",
            btnColor: AppColors.kWhite,
            btnRadius: 5.r,
            btnPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 50.w),
            btnTextColor: AppColors.kAppPrimaryColor,
            textAlign: TextAlign.center,
            suffixWidget: SvgPicture.asset(AppAssets.addToCart),
          ),
        ],
      ),
    );
  }
}

