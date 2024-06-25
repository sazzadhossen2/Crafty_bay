import 'package:crafty_bay/data/model/responce_data.dart';
import 'package:crafty_bay/data/service/network_class.dart';
import 'package:crafty_bay/data/utility/urls.dart';
import 'package:get/get.dart';


class AddToCartControlller extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;
  final String _isError = '';

  String get isError => _isError;

  Future<bool> AddtoCart(
      int Productid, String color, String Size, int qty) async {
    bool isSuccess = false;
    _inProgress = true;
    update();
    Map<String, dynamic> bodyParams = {
      "product_id": Productid,
      "color": color,
      "size": Size,
      "qty": qty
    };
    ResponceData responceData =
        await NetworkColler().postRequest(Urls.addTocart, body: bodyParams);
    _inProgress = false;
    if (responceData.isSuccess) {
      isSuccess = true;
    } else {
      isSuccess = false;
    }
    update();
    return isSuccess;
  }
}
