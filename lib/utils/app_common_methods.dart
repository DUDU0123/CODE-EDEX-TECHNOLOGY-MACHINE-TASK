import 'package:codeedex_machine_test_app/modules/home/pages/home_page.dart';
import 'package:codeedex_machine_test_app/modules/profile/profile_page.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/enums/result_type_enum.dart';

class AppCommonMethods {
  static final emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  static const loginEmail = "mobile@alisonsgroup.com";
  static const loginPassword = "12345678";
  static final pages = [HomePage(), HomePage(), HomePage(), ProfilePage()];
  static final unpolishedProducts = [
    "Unpolished Pulses", "Unpolished Rice", "Unpolished Millets", "Nuts & Dry Fruits", "Unpolished Pulses", "Unpolished Rice"
  ];
  static Color getColorByResultType({required ResultTypeEnum resultType}) {
    if (resultType == ResultTypeEnum.success) {
      return AppColors.kGreen;
    } else if (resultType == ResultTypeEnum.failure) {
      return AppColors.kRed;
    } else {
      return AppColors.kWhite;
    }
  }

    static TextStyle commonTextStyle({
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? decoration,
    Color? color,
  }) {
    return TextStyle(
      color: color ?? AppColors.kBlack,
      fontFamily: fontFamily ?? AppAssets.lugfaRegularFont,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontSize: fontSize ?? 30.sp,
      decoration: decoration,
    );
  }
}