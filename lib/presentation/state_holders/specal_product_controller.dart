import 'package:get/get.dart';

import '../../data/model/productListModel.dart';
import '../../data/model/responce_data.dart';
import '../../data/service/network_class.dart';
import '../../data/utility/urls.dart';

class SpecialProductController extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;
  final String _isError = " ";

  String get isError => _isError;
  ProductListModel _productListModel = ProductListModel();

  ProductListModel get productListModel => _productListModel;

  Future<bool> getSpecial() async {
    bool isSuccess = true;
    _inProgress = true;
    update();
    final ResponceData responceData =
        await NetworkColler().getRequest(Urls.SpecialProduct);
    _inProgress=false;
    if (responceData.isSuccess) {
      _productListModel = ProductListModel.fromJson(responceData.responceData);
      isSuccess = true;
    } else {
      isSuccess = false;
    }
    update();
    return isSuccess;
  }
}
