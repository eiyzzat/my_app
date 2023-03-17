import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  int activeIndex = 0;

  final urlImages = [
    'lib/images/nagi.jpeg',
    'lib/images/bachira.jpeg',
    'lib/images/isagi.jpeg',
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 400,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                ),
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];

                  return buildImage(urlImage, index);
                },
              ),
            ),
            const SizedBox(height: 32),
            buildIndicator(),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        color: Colors.grey,
        child: Image.asset(urlImage),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: JumpingDotEffect(
          dotWidth: 20,
          dotHeight: 20,
          activeDotColor: Colors.yellow,
          dotColor: Colors.black12,
        ),
      );
}
