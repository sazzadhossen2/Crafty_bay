import 'package:get/get.dart';
import '../../data/model/responce_data.dart';
import '../../data/service/network_class.dart';
import '../../data/utility/urls.dart';

class DeletCartController extends GetxController {
  bool _inProgress = true;

  bool get inProgress => _inProgress;
  final String _isError = " ";

  String get isError => _isError;

  Future<bool> getdeletCartId(int cartId) async {
    bool isSuccess = true;
    _inProgress = true;
    update();
    final ResponceData responceData =
        await NetworkColler().getRequest(Urls.DeletCart(cartId));
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
