import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreensBar extends StatefulWidget {
  const ScreensBar();

  @override
  State<ScreensBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ScreensBar> {
  final urlImages = [
    "https://wallpapers.com/images/hd/anime-city-pictures-8myeyo440aletx78.jpg",
    "https://cdn1.epicgames.com/ue/product/Screenshot/1-1920x1080-22b8ccc1509b2f1a713c44aeb02e8dbe.jpg?resize=1&w=1920",
    "https://cdn1.epicgames.com/ue/product/Screenshot/8-1920x1080-8a0dc0ff34ec72091345f27541a77b44.jpg?resize=1&w=1920",
    "https://i.pinimg.com/originals/58/2d/96/582d96a1df2d94bb439af1594639ccfe.jpg",
    "https://img.freepik.com/premium-photo/idyllic-getaways-dreamy-destinations-your-vacation_767466-12191.jpg?w=2000",
    "https://i.pinimg.com/originals/8b/38/89/8b388987a365d4fd55dbf6adeae81ca7.jpg",
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(0, 0, 0, 0),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                CarouselSlider.builder(
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index);
                  },
                  options: CarouselOptions(
                    viewportFraction: 1,
                    initialPage: 0,
                    height: 240,
                    autoPlay: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    // reverse: true,
                    autoPlayInterval: Duration(seconds: 5),
                    onPageChanged: ((index, reason) =>
                        setState(() => activeIndex = index)),
                  ),
                ),
                SizedBox(height: 10),
                builIndicator(),
              ],
            ),
          ),
        ),
      );
  Widget buildImage(String urlImage, int index) => Container(
        color: Colors.grey,
        child: InkWell(
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
            width: 400,
          ),
          onTap: () {
            // * Event
            print("${activeIndex}");
            // * Event
          },
        ),
      );
  Widget builIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: const JumpingDotEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: Color.fromARGB(255, 7, 7, 7),
          dotColor: Colors.black12,
        ),
      );
}
