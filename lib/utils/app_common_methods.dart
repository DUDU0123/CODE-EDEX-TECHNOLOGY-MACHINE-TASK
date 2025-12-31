import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/enums/result_type_enum.dart';

class AppCommonMethods {
  static Color getColorByResultType({required ResultTypeEnum resultType}) {
    if (resultType == ResultTypeEnum.success) {
      return AppColors.kGreen;
    } else if (resultType == ResultTypeEnum.failure) {
      return AppColors.kRed;
    } else {
      return AppColors.kWhite;
    }
  }
}