import 'package:codeedex_machine_test_app/utils/app_imports.dart';

class CommonProductHeadingWidget extends StatelessWidget {
  const CommonProductHeadingWidget({
    super.key, required this.heading,
  });
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: AppCommonMethods.commonTextStyle(
            fontSize: 16.sp,
            fontFamily: AppAssets.lugfaMediumFont,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {},
              child: Icon(Icons.arrow_back_ios_new_rounded, size: 20.sp,),
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(Icons.arrow_forward_ios_rounded, size: 20.sp,),
            ),
          ],
        ),
      ],
    );
  }
}