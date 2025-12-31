import 'package:codeedex_machine_test_app/utils/app_imports.dart';

class ProductCircularWidget extends StatelessWidget {
  const ProductCircularWidget({super.key, required this.text, this.padding});
  final String text;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 42.r),
          SizedBox(
            width: 62.w,
            child: Text(
              text,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: AppCommonMethods.commonTextStyle(
                fontFamily: AppAssets.lugfaMediumFont,
                fontSize: 11.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
