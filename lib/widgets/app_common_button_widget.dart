import 'package:codeedex_machine_test_app/utils/app_imports.dart';

class AppCommonButtonWidget extends StatelessWidget {
  const AppCommonButtonWidget({
    super.key,
    required this.btnText,
    required this.btnColor,
    required this.btnRadius,
    required this.btnPadding,
    required this.btnTextColor,
    this.btnWidth, this.fontSize, required this.textAlign, this.onTap,
  });
  final String btnText;
  final Color btnColor;
  final double btnRadius;
  final EdgeInsets btnPadding;
  final Color btnTextColor;
  final double? btnWidth;
  final double? fontSize;
  final TextAlign textAlign;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: btnWidth,
        padding: btnPadding,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Text(
          btnText,
          textAlign: textAlign,
          style: AppCommonMethods.commonTextStyle(
            fontSize: fontSize,
            color: btnTextColor,
            fontFamily: AppAssets.lugfaMediumFont,
          ),
        ),
      ),
    );
  }
}
