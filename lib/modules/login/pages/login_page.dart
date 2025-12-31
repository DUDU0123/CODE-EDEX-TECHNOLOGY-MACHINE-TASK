import 'package:codeedex_machine_test_app/modules/home/pages/home_page.dart';
import 'package:codeedex_machine_test_app/modules/login/controller/login_page_controller.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/constants/app_constraints.dart';
import 'package:codeedex_machine_test_app/widgets/app_common_button_widget.dart';
import 'package:codeedex_machine_test_app/widgets/common_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  AppAssets.appLoginPageBanner,
                  fit: BoxFit.cover,
                  height: 390.h,
                ),
                AppConstraints.kHeight27,
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.w,
                    right: 15.w,
                    bottom: 15.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: AppCommonMethods.commonTextStyle(
                          fontFamily: AppAssets.lufgaSemiBold,
                        ),
                      ),
                      AppConstraints.kHeight20,
                      Text(
                        "Email Address",
                        style: AppCommonMethods.commonTextStyle(
                          fontFamily: AppAssets.lugfaMediumFont,
                          fontSize: 16.sp,
                        ),
                      ),
                      AppConstraints.kHeight10,
                      CommonTextFormFieldWidget(
                        controller: emailController,
                        fillColor: AppColors.kWhite,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide(color: AppColors.kWhite),
                        ),
                      ),
                      AppConstraints.kHeight20,
                      Text(
                        "Password",
                        style: AppCommonMethods.commonTextStyle(
                          fontFamily: AppAssets.lugfaMediumFont,
                          fontSize: 16.sp,
                        ),
                      ),
                      AppConstraints.kHeight10,
                      GetBuilder<LoginPageController>(
                        builder: (loginPageController) {
                          return CommonTextFormFieldWidget(
                            controller: passwordController,
                            obscureText: loginPageController.isObscureText,
                            fillColor: AppColors.kWhite,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.r),
                              borderSide: BorderSide(color: AppColors.kWhite),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                loginPageController.setIsObsureText(
                                  isObscure: !loginPageController.isObscureText,
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(right: 5.w),
                                child: loginPageController.isObscureText
                                    ? Image.asset(
                                        AppAssets.eyeIcon,
                                        width: 25.w,
                                        height: 25.h,
                                      )
                                    : Icon(Icons.remove_red_eye_outlined),
                              ),
                            ),
                          );
                        },
                      ),
                      AppConstraints.kHeight20,
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot password?",
                          style: AppCommonMethods.commonTextStyle(
                            color: AppColors.kBlack,
                            fontSize: 14.sp,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      AppConstraints.kHeight20,
                      AppCommonButtonWidget(
                        fontSize: 20.sp,
                        btnWidth: AppConstraints.kScreenWidth,
                        btnText: "Login",
                        btnColor: AppColors.kAppPrimaryColor,
                        btnRadius: 5.r,
                        btnPadding: EdgeInsets.symmetric(vertical: 12.h),
                        btnTextColor: AppColors.kWhite,
                        textAlign: TextAlign.center,
                        onTap: () {
                          Get.find<LoginPageController>().validateFieldsAndLogin(email: emailController.text, password: passwordController.text);
                        },
                      ),
                      AppConstraints.kHeight20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: AppCommonMethods.commonTextStyle(
                              color: AppColors.kBlack,
                              fontSize: 14.sp,
                            ),
                          ),
                          Text(
                            "Sign Up",
                            style: AppCommonMethods.commonTextStyle(
                              color: AppColors.kBlack,
                              fontFamily: AppAssets.lugfaMediumFont,
                              fontSize: 14.sp,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10.w,
            top: 40.h,
            child: GestureDetector(
              onTap: () {
                Get.offUntil(MaterialPageRoute(builder: (context) {
                  return HomePage();
                },), (route) => false,);
              },
              child: Row(
                children: [
                  Text(
                    "Skip",
                    style: AppCommonMethods.commonTextStyle(
                      fontFamily: AppAssets.lufgaSemiBold,
                      fontSize: 16.sp,
                      color: AppColors.kWhite,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18.sp,
                    color: AppColors.kWhite,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
