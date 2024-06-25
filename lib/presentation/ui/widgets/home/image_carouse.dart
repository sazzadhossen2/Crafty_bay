import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

import '../../../../data/model/ProductListSlider.dart';
import '../../utility/app_colors.dart';

class BannarCarouselWidget extends StatelessWidget {
  BannarCarouselWidget({
    super.key,
    this.hight,
    required this.banner
  });
List<ProductListSliderData> banner;
  final double? hight;

  final ValueNotifier<int> _currentindex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: hight ?? 180,
            onPageChanged: (index, reason) {
              _currentindex.value = index;
            },
            viewportFraction: 1,
            autoPlay: true,
          ),
          items:banner.map((banner) {
            return Builder(
              builder: (BuildContext context) {
                return Stack(
                  children:[ 
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.primaryColor,
                        image: DecorationImage(image: NetworkImage(banner.image??''),fit: BoxFit.cover)
                      ),
                  
                  
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 10,),
                        Text(banner.title??"",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 20,),
                        SizedBox(width: 200,
                         child: Text(banner.shortDes??""),),

                        const SizedBox(height: 20,),
                        Text(banner.price??""),
                      ],
                    ),
                  ),
                  ]
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 6,
        ),
        ValueListenableBuilder(
          builder: (BuildContext context, value, Widget? child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < banner.length; i++)
                  Container(
                    height: 14,
                    width: 14,
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color:
                            i == value ? AppColors.primaryColor : Colors.grey,
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
      ],
    );
  }
}
