import 'package:crafty_bay/presentation/state_holders/auth_controller.dart';
import 'package:crafty_bay/presentation/state_holders/main_button_nav_controll.dart';
import 'package:crafty_bay/presentation/state_holders/new_product_controller.dart';
import 'package:crafty_bay/presentation/state_holders/popular_product_controller.dart';
import 'package:crafty_bay/presentation/state_holders/specal_product_controller.dart';
import 'package:crafty_bay/presentation/ui/screens/Auth/verify_email_screen.dart';
import 'package:crafty_bay/presentation/ui/screens/product_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../state_holders/banner_list_controller.dart';
import '../../state_holders/category_controller.dart';
import '../utility/assets_path.dart';
import '../widgets/category_item.dart';
import '../widgets/home/circle_icone.dart';
import '../widgets/home/image_carouse.dart';
import '../widgets/home/section_title_widget.dart';
import '../widgets/product_card_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              searchTextFild,
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 210,
                child: GetBuilder<BannerListController>(builder: (BControl) {
                  return Visibility(
                    visible: BControl.inProgress==false,
                    replacement: const Center(child: CircularProgressIndicator()),
                    child: BannarCarouselWidget(
                      banner: BControl.productListSlider.productSliderdata ?? [],
                    ),
                  );
                }),
              ),
              const SizedBox(
                height: 16,
              ),
              SectionWidget(
                title: 'All Categories',
                onTapSeeAll: () {
                  Get.find<MainButtonNavControll>().changeIndex(1);
                },
              ),
              categorylist,
              const SizedBox(
                height: 16,
              ),
              SectionWidget(
                title: 'Popular',
                onTapSeeAll: () {
                  Get.to(() =>  ProductListScreen());
                },
              ),
              PopularProduct,
              const SizedBox(
                height: 8,
              ),
              SectionWidget(
                title: 'Special',
                onTapSeeAll: () {},
              ),
              NewProduct,
              const SizedBox(
                height: 8,
              ),
              SectionWidget(
                title: 'New',
                onTapSeeAll: () {},
              ),
              SpecialProduct,
            ],
          ),
        ),
      ),
    );
  }

  SizedBox get categorylist {
    return SizedBox(
      height: 120,
      child: GetBuilder<CategoryController>(builder: (Ccontroler) {
        return Visibility(
          visible: Ccontroler.inProgress==false,
          replacement: const Center(child: CircularProgressIndicator()),
          child: ListView.separated(
            itemCount: Ccontroler.catrgoryModel.categorydata?.length ?? 0,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Category(
                  categoryData: Ccontroler.catrgoryModel.categorydata![index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 8,
              );
            },
          ),
        );
      }),
    );
  }

  SizedBox get PopularProduct {
    return SizedBox(
      height: 190,
      child: GetBuilder<PopularProductController>(builder: (Pcontrol) {
        return Visibility(
          visible: Pcontrol.inProgress==false,
          replacement: const Center(child: CircularProgressIndicator()),
          child: Center(
            child: ListView.separated(
              itemCount: Pcontrol.productListModel.productdata?.length ?? 0,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ProductCardItem(
                  productData: Pcontrol.productListModel.productdata![index],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 8,
                );
              },
            ),
          ),
        );
      }),
    );
  }

  SizedBox get NewProduct {
    return SizedBox(
      height: 190,
      child: GetBuilder<NewProductController>(builder: (Newcoltrol) {
        return Visibility(
          visible: Newcoltrol.inProgress==false,
          replacement: const Center(child: CircularProgressIndicator()),
          child: ListView.separated(
            itemCount: Newcoltrol.productListModel.productdata?.length ?? 0,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ProductCardItem(
                productData: Newcoltrol.productListModel.productdata![index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 8,
              );
            },
          ),
        );
      }),
    );
  }

  SizedBox get SpecialProduct {
    return SizedBox(
      height: 190,
      child: GetBuilder<SpecialProductController>(builder: (SpecialControl) {
        return Visibility(
          visible: SpecialControl.inProgress==false,
          replacement: const Center(child: CircularProgressIndicator()),
          child: ListView.separated(
            itemCount: SpecialControl.productListModel.productdata?.length ?? 0,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ProductCardItem(
                productData: SpecialControl.productListModel.productdata![index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 8,
              );
            },
          ),
        );
      }),
    );
  }

  TextFormField get searchTextFild {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search',
        filled: true,
        fillColor: Colors.grey.shade200,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  AppBar get appbar {
    return AppBar(
      title: Image.asset(AssetsPath.logonav),
      actions: [
        CircleButton(
          ontap: () async {
            // await Get.find<AuthController>().ClearData();
            AuthController.ClearData();
            Get.offAll(() => const Verifyemailscreen());
          },
          iconData: Icons.person,
        ),
        const SizedBox(
          width: 8,
        ),
        CircleButton(
          ontap: () {},
          iconData: Icons.call,
        ),
        const SizedBox(
          width: 8,
        ),
        CircleButton(
          ontap: () {},
          iconData: Icons.notifications_active,
        ),
      ],
    );
  }
}
