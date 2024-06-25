
import 'package:crafty_bay/presentation/state_holders/list_product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/product_card_item.dart';
class ProductListScreen extends StatefulWidget {
   ProductListScreen({super.key,this.category,this.categoryID});
 final String ?category;
 int?categoryID;
  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.categoryID !=null){
      Get.find<CategoryProductIDController>().getCategoryProductID(widget.categoryID!);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text( widget.category ?? 'Product'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<CategoryProductIDController>(
          builder: (CategoryControl) {
            return Visibility(
              visible: CategoryControl.productListModel.productdata?.isNotEmpty??false,
              replacement: const Center(child: Text("Comming Soon")),
              child: Visibility(
                visible: CategoryControl.inProgress==false,
                replacement: const Center(child: CircularProgressIndicator()),
                child: GridView.builder(
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 4,
                      childAspectRatio: 0.90,
                    ),
                    itemCount:CategoryControl.productListModel.productdata?.length??0,
                    itemBuilder: (context, index) {
                      return  FittedBox(child: ProductCardItem(productData: CategoryControl.productListModel.productdata![index]));
                    }),
              ),
            );
          }
        ),
      ),
    );
  }
}
