
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../data/model/productDetailsModel.dart';
import '../../data/model/responce_data.dart';
import '../../data/service/network_class.dart';
import '../../data/utility/urls.dart';

class ProductDetailsController extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;
  final String _isError = " ";

  String get isError => _isError;
 ProductDetailsModel _productDetailsModel =ProductDetailsModel();
 ProductDetailData get productDetail=>_productDetailsModel.productdetaildata?.first??ProductDetailData();
 //  ProductDetailData get productDetail=>_productDetailsModel.productdetaildata!.first;
  Future<bool> getProductDetails(int productId) async {
    bool isSuccess = true;
    _inProgress = true;
    update();
    final ResponceData responceData =
    await NetworkColler().getRequest(Urls.ProductDetais(productId));
    _inProgress = false;
    if (responceData.isSuccess) {
      _productDetailsModel = ProductDetailsModel.fromJson(responceData.responceData);

      isSuccess = true;
    } else {
      isSuccess = false;
    }
    update();
    return isSuccess;
  }


}