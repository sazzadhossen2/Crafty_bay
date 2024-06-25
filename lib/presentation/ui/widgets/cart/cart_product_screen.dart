import 'package:crafty_bay/data/model/cartListDataModel.dart';
import 'package:crafty_bay/presentation/state_holders/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

import '../../../state_holders/deletCartItems.dart';

import '../../utility/app_colors.dart';

class CardProductItems extends StatefulWidget {
  const CardProductItems({
    super.key,
    required this.cartData,
  });

  final CartsData cartData;

  @override
  _CardProductItemsState createState() => _CardProductItemsState();
}

class _CardProductItemsState extends State<CardProductItems> {
  late ValueNotifier<int> noOfItem;

  @override
  void initState() {
    super.initState();
    noOfItem = ValueNotifier(widget.cartData.quantity);
  }

  @override
  void dispose() {
    noOfItem.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Row(
        children: [
          Image.network(
            widget.cartData.product?.image ?? "",
            width: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.cartData.product?.title ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text('Color: ${widget.cartData.color}'),
                            const SizedBox(
                              width: 8,
                            ),
                            Text('Size: ${widget.cartData.size}'),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        // Remove item from cart
                        Get.find<DeletCartController>()
                            .getdeletCartId(widget.cartData.productId!);
                        // Update UI: remove item from list
                        setState(() {
                          Get.find<CartController>()
                              .getCart();
                        });
                      },
                      icon: const Icon(Icons.delete_forever),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${widget.cartData.price}",
                      style: const TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    ValueListenableBuilder(
                      valueListenable: noOfItem,
                      builder: (context, value, _) {
                        return ItemCount(
                          initialValue: value,
                          minValue: 1,
                          maxValue: 20,
                          decimalPlaces: 0,
                          color: AppColors.primaryColor,
                          onChanged: (v) {
                            noOfItem.value = v.toInt();
                            Get.find<CartController>().updateList(
                              widget.cartData.id!,
                              noOfItem.value,
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
