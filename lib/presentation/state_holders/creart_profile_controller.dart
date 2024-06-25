import 'package:crafty_bay/data/model/responce_data.dart';
import 'package:crafty_bay/data/service/network_class.dart';
import 'package:crafty_bay/data/utility/urls.dart';
import 'package:crafty_bay/presentation/state_holders/auth_controller.dart';
import 'package:get/get.dart';

import '../../data/model/creat_profile_perams.dart';
import '../../data/model/profile.dart';

class CreatprofileControlller extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;
  String _isError = '';

  String get isError => _isError;
  Profile _profile = Profile();

  Profile get profile => _profile;

  Future<bool> CreatProfile(
      String token,
      CreatProfilePerams cProfile
      ) async {
    _inProgress = true;
    update();

    ResponceData responceData = await NetworkColler()
        .postRequest(Urls.creatProfile, token: token, body: cProfile.toJson());
    _inProgress = false;
    if (responceData.isSuccess) {
      _profile = Profile.fromJson(responceData.responceData['data']);
      await Get.find<AuthController>().SaveUser(token, _profile);
      update();
      return true;
    } else {
      _isError = responceData.isError;
      update();
      return false;
    }
  }
}
