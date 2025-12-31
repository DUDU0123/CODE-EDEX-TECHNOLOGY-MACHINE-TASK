
import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/enums/result_type_enum.dart';

class AppDialogs {
  static appCommonSnackBar({required String snackbarTitle, required String snackbarMessage, required ResultTypeEnum messageType}) {
    Get.snackbar(
      backgroundColor: AppCommonMethods.getColorByResultType(resultType: messageType),
      snackbarTitle, snackbarMessage,
      snackPosition: SnackPosition.TOP,
      colorText: AppColors.kWhite,
      duration: Duration(seconds: 1)
    );
  }
}