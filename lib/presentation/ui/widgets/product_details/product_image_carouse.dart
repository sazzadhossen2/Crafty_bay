import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

import '../../utility/app_colors.dart';

class ProductImageCarousel extends StatelessWidget {
  ProductImageCarousel({
    super.key,
    this.hight,
    required this.url
  });

  final double? hight;
final List<String>url;
  final ValueNotifier<int> _currentindex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: hight ?? 220,
            onPageChanged: (index, reason) {
              _currentindex.value = index;
            },
            viewportFraction: 1,
            autoPlay: true,
          ),
          items: url.map((Urls) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,

                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image:DecorationImage(image: NetworkImage(Urls),fit: BoxFit.cover),
                    ),
                    // child: Center(
                    //     child: Text(
                    //   'text $i',
                    //   style: const TextStyle(fontSize: 16.0),
                    // ))
                
                );
              },
            );
          }).toList(),
        ),

        Positioned(
          bottom: 12,
          //top: 0,
          left: 0,
          right: 0,

          child: ValueListenableBuilder(
            builder: (BuildContext context, value, Widget? child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < url.length; i++)
                    Container(
                      height: 14,
                      width: 14,
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color:
                              i == value ? AppColors.primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: i == value
                                ? AppColors.primaryColor
                                : Colors.white,
                          )),
                    ),
                ],
              );
            },
            valueListenable: _currentindex,
          ),
        ),
      ],
    );
  }
}
