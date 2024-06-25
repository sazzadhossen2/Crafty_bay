import 'package:crafty_bay/presentation/state_holders/category_controller.dart';
import 'package:crafty_bay/presentation/state_holders/main_button_nav_controll.dart';
import 'package:crafty_bay/presentation/state_holders/new_product_controller.dart';
import 'package:crafty_bay/presentation/state_holders/popular_product_controller.dart';
import 'package:crafty_bay/presentation/state_holders/specal_product_controller.dart';
import 'package:crafty_bay/presentation/ui/screens/carts_screen.dart';
import 'package:crafty_bay/presentation/ui/screens/wishlist_screen.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../state_holders/banner_list_controller.dart';
import '../utility/app_colors.dart';
import 'category_screen.dart';
import 'home_screen.dart';

class MainButtonNavButton extends StatefulWidget {
  const MainButtonNavButton({super.key});

  @override
  State<MainButtonNavButton> createState() => _MainButtonNavButtonState();
}

class _MainButtonNavButtonState extends State<MainButtonNavButton> {
final List<Widget>_screen=[
  const HomeScreen(),
  const CategoryScreen(),
  const CartsScreen(),
  const WishlistScreen()
];
@override
void initState() {
  // TODO: implement initState
  super.initState();
  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    Get.find<BannerListController>().getbannerList();
    Get.find<CategoryController>().getCategory();
    Get.find<PopularProductController>().getPopular();
    Get.find<NewProductController>().getNew();
    Get.find<SpecialProductController>().getSpecial();
});

//   Get.find<BannerListController>().getbannerList();
//   Get.find<CategoryController>().getCategory();
//   Get.find<PopularProductController>().getPopular();
//   Get.find<NewProductController>().getNew();
//   Get.find<SpecialProductController>().getSpecial();
}
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainButtonNavControll>(builder: (controller){
      return Scaffold(
        body: _screen[controller.currentindex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: AppColors.primaryColor,
          showUnselectedLabels: true,
          currentIndex: controller.currentindex,
          onTap: controller.changeIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'Category'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Wishlist'),
          ],
        ),
      );
    });
  }
}
