import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:codesbreak_task/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliderCard extends StatefulWidget {
  @override
  _SliderCardState createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 180.0,
        enableInfiniteScroll: false,
        viewportFraction: 0.8,
        enlargeCenterPage: true,
      ),
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Replace with actual asset or network image
                      SvgPicture.asset(
                        ImageConstant.joggingImg,
                        width: 27,
                        height: 25,
                        alignment: Alignment.center,
                      ),
                      Text(
                        '2.32/5.00 miles',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '238.2 cal',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        'Jogging',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    ImageConstant.joggingImg,
                    width: 27,
                    height: 25,
                    alignment: Alignment.center,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.pause,
                      color: Colors.orange,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
