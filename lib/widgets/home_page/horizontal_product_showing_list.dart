import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/constants/app_constraints.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/common_product_heading.dart';
import 'package:codeedex_machine_test_app/widgets/product_small_container.dart';

class HorizontalProductsShowingList extends StatelessWidget {
  const HorizontalProductsShowingList({super.key, required this.productsTitle, required this.productType, required this.productName, required this.productPrice, required this.oldPrice});
  final String productsTitle;
  final String productType;
  final String productName;
  final String productPrice;
  final String oldPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: CommonProductHeadingWidget(
              heading: productsTitle,
            ),
          ),
          AppConstraints.kHeight10,

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(10, (index) {
                return ProductSmallContainer(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                      oldPrice: oldPrice,
                      productName: productName,
                      productPrice: productPrice,
                      productType: productType,
                    );
              },),
            ),
          ),
      ],
    );
  }
}