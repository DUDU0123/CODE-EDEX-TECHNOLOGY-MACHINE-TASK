import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/constants/app_constraints.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/common_product_heading.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/home_top_auto_play_carousel.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/horizontal_product_showing_list.dart';
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
          HorizontalProductsShowingList(
            productsTitle: "Featured Products",
            oldPrice: "800",
            productName: "Light pink salt 1 kg",
            productPrice: "600",
            productType: "Flours & Sugars",
          ),
          AppConstraints.kHeight20,
          HorizontalProductsShowingList(
            productsTitle: "Daily Best Selling",
            oldPrice: "800",
            productName: "Light pink salt 1 kg",
            productPrice: "600",
            productType: "Flours & Sugars",
          ),
          AppConstraints.kHeight20,
          HorizontalProductsShowingList(
            productsTitle: "Recently Added",
            oldPrice: "800",
            productName: "Light pink salt 1 kg",
            productPrice: "600",
            productType: "Flours & Sugars",
          ),
          AppConstraints.kHeight20,
          HorizontalProductsShowingList(
            productsTitle: "Poupular Products",
            oldPrice: "800",
            productName: "Light pink salt 1 kg",
            productPrice: "600",
            productType: "Flours & Sugars",
          ),
          AppConstraints.kHeight20,
          HorizontalProductsShowingList(
            productsTitle: "Trending Products",
            oldPrice: "800",
            productName: "Light pink salt 1 kg",
            productPrice: "600",
            productType: "Flours & Sugars",
          ),
          AppConstraints.kHeight20,
        ],
      ),
    );
  }
}

