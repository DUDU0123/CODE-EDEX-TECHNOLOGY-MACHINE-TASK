import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/constants/app_constraints.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/common_product_heading.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/home_top_auto_play_carousel.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/product_circular_widget.dart';
import 'package:codeedex_machine_test_app/widgets/product_small_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppConstraints.kHeight14,

          HomeTopAutoPlayCarousel(),

          AppConstraints.kHeight10,

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: CommonProductHeadingWidget(
              heading: "Categories",
            ),
          ),

          AppConstraints.kHeight10,

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                AppCommonMethods.unpolishedProducts.length,
                (index) {
                  return ProductCircularWidget(
                    text: AppCommonMethods.unpolishedProducts[index],
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                  );
                },
              ),
            ),
          ),

          AppConstraints.kHeight15,

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: CommonProductHeadingWidget(
              heading: "Featured Products",
            ),
          ),

          AppConstraints.kHeight10,

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(10, (index) {
                return ProductSmallContainer(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                      oldPrice: "800",
                      productName: "Light pink salt 1 kg",
                      productPrice: "600",
                      productType: "Flours & Sugars",
                    );
              },),
            ),
          ),


          AppConstraints.kHeight20,
        ],
      ),
    );
  }
}
