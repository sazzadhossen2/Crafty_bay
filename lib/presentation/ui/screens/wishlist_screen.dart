
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../state_holders/main_button_nav_controll.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (value){
        Get.find<MainButtonNavControll>().backtohome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Wishlist',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.find<MainButtonNavControll>().backtohome();
            },
          ),
          elevation: 3,
          backgroundColor: Colors.white,
        ),
        body: GridView.builder(
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 4,
              childAspectRatio: 0.90,
            ),
            itemCount: 30,
            itemBuilder: (context, index) {
              return null;
            
              // return const FittedBox(child: ProductCardItem());
            }),
      ),
    );
  }
}
