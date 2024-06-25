import 'package:crafty_bay/data/service/network_class.dart';
import 'package:crafty_bay/data/utility/urls.dart';
import 'package:get/get.dart';

import '../../data/model/responce_data.dart';

class SendOtpEmailController extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;
  String _anError = '';

  String get anError => _anError;

  Future<bool> SendEmail(String email) async {
    _inProgress = true;
    update();

    final ResponceData responce =
        await NetworkColler().getRequest(Urls.emailOtp(email));
    _inProgress = false;

    if (responce.isSuccess) {
      update();
      return true;
    } else {
      _anError = responce.isError;
      update();
      return false;
    }
  }
}


