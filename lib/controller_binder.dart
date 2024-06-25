import 'package:crafty_bay/presentation/state_holders/add_to_cart.dart';
import 'package:crafty_bay/presentation/state_holders/auth_controller.dart';
import 'package:crafty_bay/presentation/state_holders/banner_list_controller.dart';
import 'package:crafty_bay/presentation/state_holders/cart_controller.dart';
import 'package:crafty_bay/presentation/state_holders/category_controller.dart';
import 'package:crafty_bay/presentation/state_holders/creart_profile_controller.dart';
import 'package:crafty_bay/presentation/state_holders/deletCartItems.dart';
import 'package:crafty_bay/presentation/state_holders/invoice_controller.dart';
import 'package:crafty_bay/presentation/state_holders/list_product_controller.dart';
import 'package:crafty_bay/presentation/state_holders/main_button_nav_controll.dart';
import 'package:crafty_bay/presentation/state_holders/new_product_controller.dart';
import 'package:crafty_bay/presentation/state_holders/popular_product_controller.dart';
import 'package:crafty_bay/presentation/state_holders/product_details_controller.dart';
import 'package:crafty_bay/presentation/state_holders/readProfile.dart';
import 'package:crafty_bay/presentation/state_holders/send_otp_email_controller.dart';
import 'package:crafty_bay/presentation/state_holders/specal_product_controller.dart';
import 'package:crafty_bay/presentation/state_holders/verify_otp_controlller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(MainButtonNavControll());
    Get.put(SendOtpEmailController());
    Get.put(VerifyOtpControlller());
    Get.put(ReadprofileControlller());
    Get.put(AuthController());
    Get.put(CreatprofileControlller());
    Get.put(BannerListController());
    Get.put(CategoryController());
    Get.put(NewProductController());
    Get.put(PopularProductController());
    Get.put(SpecialProductController());
    Get.put(CategoryProductIDController());
    Get.put(ProductDetailsController());
    Get.put(AddToCartControlller());
    Get.put(CartController());
    Get.put(InvoiceController());
    Get.put(DeletCartController());
  }
}