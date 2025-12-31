import 'package:codeedex_machine_test_app/modules/home/pages/home_page.dart';
import 'package:codeedex_machine_test_app/utils/app_dialogs.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/enums/result_type_enum.dart';

class LoginPageController extends GetxController{
  bool isObscureText = true;

  void setIsObsureText({required bool isObscure}) {
    isObscureText = isObscure;
    update();
  }


  void validateFieldsAndLogin({required String email, required String password}){
    if (email.isEmpty) {
      AppDialogs.appCommonSnackBar(snackbarTitle: "Info", snackbarMessage: "Email should not be empty", messageType: ResultTypeEnum.failure);
      return;
    }

    if (password.isEmpty) {
      AppDialogs.appCommonSnackBar(snackbarTitle: "Info", snackbarMessage: "Password should not be empty", messageType: ResultTypeEnum.failure);
      return;
    }

    if (email.isNotEmpty && password.isNotEmpty) {
      if (email == AppCommonMethods.loginEmail && password == AppCommonMethods.loginPassword) {
        Get.offUntil(MaterialPageRoute(builder: (context) {
                  return HomePage();
                },), (route) => false,);
        // navigate to home page
        AppDialogs.appCommonSnackBar(snackbarTitle: "Logged In", snackbarMessage: "Logged in successfully", messageType: ResultTypeEnum.success);
      } else {
        AppDialogs.appCommonSnackBar(snackbarTitle: "Info", snackbarMessage: "Invalid credentials", messageType: ResultTypeEnum.failure);
        return;
      }
    } else {
      AppDialogs.appCommonSnackBar(snackbarTitle: "Info", snackbarMessage: "Invalid credentials", messageType: ResultTypeEnum.failure);
      return;
    }
  }
}