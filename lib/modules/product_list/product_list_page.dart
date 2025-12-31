import 'package:codeedex_machine_test_app/utils/app_imports.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "AppBar Title",
              style: AppCommonMethods.commonTextStyle(
                fontFamily: AppAssets.lugfaMediumFont, fontSize: 16.sp
              ),
            ),
            Text(
              "Item count",
              style: AppCommonMethods.commonTextStyle(
                fontSize: 12.sp
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
          onPressed: () {},
          icon: Image.asset(AppAssets.searchIcon, width: 24.w, height: 24.h),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(AppAssets.cartIcon, width: 24.w, height: 24.h),
        ),
        ]
      ),
    );
  }
}
