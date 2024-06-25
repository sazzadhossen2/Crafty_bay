import 'package:crafty_bay/data/model/catrgoryModel.dart';
import 'package:crafty_bay/presentation/ui/screens/product_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utility/app_colors.dart';

class Category extends StatelessWidget {
  Category({super.key, required this.categoryData});

  CategoryData categoryData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ProductListScreen(
          category: categoryData.categoryName,
          categoryID: categoryData.id,
        ));
      },
      child: Column(
        children: [
          Card(
              elevation: 0,
              color: AppColors.primaryColor.withOpacity(.1),
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.network(
                    categoryData.categoryImg ?? '',
                    height: 40,
                    width: 40,
                  ))),
          Text(
            categoryData.categoryName ?? '',
            style: const TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
