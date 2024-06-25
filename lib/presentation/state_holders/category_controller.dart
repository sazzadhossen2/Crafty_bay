import 'package:crafty_bay/data/model/catrgoryModel.dart';
import 'package:get/get.dart';

import '../../data/model/responce_data.dart';
import '../../data/service/network_class.dart';
import '../../data/utility/urls.dart';

class CategoryController extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;
  final String _isError = " ";

  String get isError => _isError;
  CatrgoryModel _catrgoryModel = CatrgoryModel();

  CatrgoryModel get catrgoryModel => _catrgoryModel;

  Future<bool> getCategory() async {
    bool isSuccess = true;
    _inProgress = true;
    update();
    final ResponceData responceData =
        await NetworkColler().getRequest(Urls.categoryList);
    _inProgress = false;
    if (responceData.isSuccess) {
      _catrgoryModel = CatrgoryModel.fromJson(responceData.responceData);
      isSuccess = true;
    } else {
      isSuccess = false;
    }
    update();
    return isSuccess;
  }
}
