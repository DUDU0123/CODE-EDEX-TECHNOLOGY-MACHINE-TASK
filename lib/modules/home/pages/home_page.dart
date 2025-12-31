import 'package:carousel_slider/carousel_slider.dart';
import 'package:codeedex_machine_test_app/modules/home/controller/home_page_controller.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/utils/constants/app_constraints.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/common_product_heading.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/home_top_auto_play_carousel.dart';
import 'package:codeedex_machine_test_app/widgets/home_page/product_circular_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppConstraints.kHeight14,
        HomeTopAutoPlayCarousel(),
        AppConstraints.kHeight10,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CommonProductHeadingWidget(heading: "Categories"),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              AppCommonMethods.unpolishedProducts.length,
              (index) {
                return ProductCircularWidget(
                  text: AppCommonMethods.unpolishedProducts[index],
                  padding: EdgeInsets.symmetric(horizontal: 5),
                );
              },
            ),
          ),
        ),
        AppConstraints.kHeight15,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CommonProductHeadingWidget(heading: "Featured Products"),
        ),
      ],
    );
  }
}



