import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatelessWidget {
  const MyCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    List productImages = [
      'rc1.png',
      'rc2.png',
    ];
    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(),
        items: productImages
            .map((item) => Container(
                  color: Colors.green,
                  // child: Center(child: Text(item.toString())),
                  child: Image(image: AssetImage('assets/images/$item')),
                ))
            .toList(),
      ),
    ]);
  }
}
