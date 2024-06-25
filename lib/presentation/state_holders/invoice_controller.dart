import 'package:get/get.dart';

import '../../data/model/List_of_payment_method.dart';
import '../../data/model/responce_data.dart';
import '../../data/service/network_class.dart';
import '../../data/utility/urls.dart';

class InvoiceController extends GetxController{
  bool _inProgress = true;

  bool get inProgress => _inProgress;
  final String _isError = " ";

  String get isError => _isError;
  // ProductListModel _productListModel=ProductListModel();
  // ProductListModel get productListModel=>_productListModel;
  ListofPaymentMethod _listofPaymentMethod =ListofPaymentMethod();
  ListofPaymentMethod get listofPaymentMethod=>_listofPaymentMethod;

  Future<bool> getinvoice() async {
    bool isSuccess = true;
    _inProgress = true;
    update();
    final ResponceData responceData =
    await NetworkColler().getRequest(Urls.invoice);
    _inProgress=false;
    if (responceData.isSuccess) {
      _listofPaymentMethod =
          ListofPaymentMethod.fromJson(responceData.responceData);
      isSuccess = true;
    } else {
      isSuccess = false;
    }
    update();
    return isSuccess;
  }

}