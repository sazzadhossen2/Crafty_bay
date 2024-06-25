import 'package:crafty_bay/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../state_holders/cart_controller.dart';
import '../widgets/cart/cart_product_screen.dart';
import 'cheek_out.dart';

class CartsScreen extends StatefulWidget {
  const CartsScreen({super.key});

  @override
  State<CartsScreen> createState() => _CartsScreenState();
}

class _CartsScreenState extends State<CartsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.find<CartController>().getCart();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: GetBuilder<CartController>(builder: (CartController) {
        if(CartController.inProgress==true){
          return const Center(child: CircularProgressIndicator());
        }
        return Column(
          children: [
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return CardProductItems(
                        cartData: CartController.cartListModel.cartsdata![index],
                      );
                    },
                    separatorBuilder: (_, __) {
                      return const SizedBox(
                        height: 8,
                      );
                    },
                    itemCount:CartController.cartListModel.cartsdata?.length ?? 0
                )),
            totalPriceAndCheckSection(CartController.totalPrice)
          ],
        );
      }),
    );
  }

  Container totalPriceAndCheckSection(double totalPrice) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.primaryColor.withOpacity(0.15),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16), topLeft: Radius.circular(16))),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Total Price',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "$totalPrice",
                  style: const TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(const CheekOutScreen());
                    }, child: const Text("Cheek Out")))
          ],
        ),
      ),
    );
  }
}
