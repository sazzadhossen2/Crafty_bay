import 'package:crafty_bay/data/model/responce_data.dart';
import 'package:crafty_bay/data/service/network_class.dart';
import 'package:crafty_bay/data/utility/urls.dart';
import 'package:crafty_bay/presentation/state_holders/auth_controller.dart';
import 'package:crafty_bay/presentation/state_holders/readProfile.dart';
import 'package:get/get.dart';

class VerifyOtpControlller extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;
  String _isError = '';

  String get isError => _isError;
  bool _NavigateCompleteScreen = true;

  bool get NavigateCompleteScreen => _NavigateCompleteScreen;
String _token='';
String get token=>_token;
  Future<bool> otpScreen(String email, String otp) async {
    _inProgress = true;
    update();
    ResponceData responceData =
        await NetworkColler().getRequest(Urls.sentOtp(email, otp));
    _inProgress = false;
    if (responceData.isSuccess) {
       _token = responceData.responceData['data'];
      final result =
          await Get.find<ReadprofileControlller>().readProfile(_token);
      if (result) {
        _NavigateCompleteScreen =
            Get.find<ReadprofileControlller>().isProfileCompletde ==
                false;
        if(_NavigateCompleteScreen==false){
         await Get.find<AuthController>().SaveUser(_token, Get.find<ReadprofileControlller>().profile);
        }
      } else {
        Get.find<ReadprofileControlller>().isError;
        update();
        return false;
      }

      update();
      return true;
    } else {
      _isError = responceData.isError;
      update();
      return false;
    }
  }
}
