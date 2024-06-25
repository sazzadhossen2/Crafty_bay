import 'package:crafty_bay/data/model/responce_data.dart';
import 'package:crafty_bay/data/service/network_class.dart';
import 'package:crafty_bay/data/utility/urls.dart';
import 'package:get/get.dart';

import '../../data/model/profile.dart';

class ReadprofileControlller extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;
  String _isError = '';

  String get isError => _isError;
  Profile _profile = Profile();

  Profile get profile => _profile;

  bool _isProfileCompletde = false;

  bool get isProfileCompletde => _isProfileCompletde;

  Future<bool> readProfile(String token) async {
    _inProgress = true;
    update();
    ResponceData responceData =
        await NetworkColler().getRequest(Urls.readProfile, token: token);
    _inProgress = false;
    if (responceData.isSuccess) {
      final profileData = responceData.responceData['data'];
      if (profileData == null) {
        _isProfileCompletde = false;
      } else {
        _profile = Profile.fromJson(profileData);
        _isProfileCompletde = true;
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
