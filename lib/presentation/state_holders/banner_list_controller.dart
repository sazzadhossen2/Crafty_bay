import 'package:crafty_bay/data/model/ProductListSlider.dart';
import 'package:crafty_bay/data/model/responce_data.dart';
import 'package:crafty_bay/data/service/network_class.dart';
import 'package:crafty_bay/data/utility/urls.dart';
import 'package:get/get.dart';

class BannerListController extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;
  final String _isError = " ";

  String get isError => _isError;
  ProductListSlider _productListSlider = ProductListSlider();

  ProductListSlider get productListSlider => _productListSlider;

  Future<bool> getbannerList() async {
    bool isSuccess = true;
    _inProgress = true;
    update();
    final ResponceData responceData =
        await NetworkColler().getRequest(Urls.bannerList);
    _inProgress=false;
    if (responceData.isSuccess) {
      _productListSlider =
          ProductListSlider.fromJson(responceData.responceData);
      isSuccess = true;
    } else {
      isSuccess = false;
    }
    update();
    return isSuccess;
  }
}
