import 'package:carousel_slider/carousel_slider.dart';
import 'package:codeedex_machine_test_app/utils/app_imports.dart';
import 'package:codeedex_machine_test_app/widgets/advertisement_widget.dart';

class HomeTopAutoPlayCarousel extends StatelessWidget {
  const HomeTopAutoPlayCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 160.h, // adjust height
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        enlargeCenterPage: true,
        viewportFraction: 0.86,
        enableInfiniteScroll: true,
      ),
      items: [
        AdvertisementWidget(
          headingText: "Go Natural with Unpolished Grains",
          startTxt: "Hurry Up! Get 10% Off",
          image: AppAssets.almondsThreeSet,
        ),
        AdvertisementWidget(
          headingText: "Go Natural with Unpolished Grains",
          startTxt: "Hurry Up! Get 10% Off",
          image: AppAssets.almondsThreeSet,
        ),
        AdvertisementWidget(
          headingText: "Go Natural with Unpolished Grains",
          startTxt: "Hurry Up! Get 10% Off",
          image: AppAssets.almondsThreeSet,
        ),
      ],
    );
  }
}