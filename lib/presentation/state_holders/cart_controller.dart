
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../data/model/cartListDataModel.dart';
import '../../data/model/responce_data.dart';
import '../../data/service/network_class.dart';
import '../../data/utility/urls.dart';

class CartController extends GetxController{
  bool _inProgress = false;

  bool get inProgress => _inProgress;
  final String _isError = " ";
  String get isError => _isError;
  // CartListModel _cartListModel =CartListModel();
  // CartListModel get cartListModel=>_cartListModel;
  CarListData _cartListModel=CarListData();
  CarListData get cartListModel=>_cartListModel;


  Future<bool> getCart() async {
    bool isSuccess = true;
    _inProgress = true;
    update();
    final ResponceData responceData =
    await NetworkColler().getRequest(Urls.showCart);
    _inProgress=false;
    if (responceData.isSuccess) {
      _cartListModel =CarListData.fromJson(responceData.responceData);
      isSuccess = true;
    } else {
      isSuccess = false;
    }
    update();
    return isSuccess;
  }
  void updateList(int id,int quantity)async{
    _cartListModel.cartsdata?.firstWhere((element)=>element.id==id).quantity=quantity;
    update();
  }
  double get totalPrice{
    double total=0;
    for(CartsData item in _cartListModel.cartsdata??[]){
      total +=(double.tryParse(item.product?.price??'0')??0) *item.quantity;
    }
    return total;
  }

}
