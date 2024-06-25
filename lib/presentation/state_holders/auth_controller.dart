import 'dart:convert';

import 'package:crafty_bay/data/model/profile.dart';
import 'package:crafty_bay/presentation/ui/screens/Auth/verify_email_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  static String? token;
  Profile? profile;

  Future<void> SaveUser(String t, Profile p) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('token', t);
    await sharedPreferences.setString('profile', jsonEncode(p.toJson()));
    token = t;
    profile = p;
  }

  Future<void> initilize() async {
    token = await getToken();
    profile = await getProfile();
  }

  Future<bool> isLogin() async {
    await initilize();
    return token != null;
  }

  bool get istokenLogin => token != null;

  Future<String?> getToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('token');
  }

  Future<Profile?> getProfile() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? Sprofile = sharedPreferences.getString('profile');
    if (Sprofile == null) {
      return null;
    } else {
      return Profile.fromJson(jsonDecode(Sprofile));
    }
  }

 static Future<void> ClearData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
    token = null;
  }

 static Future<void> gotoLogin() async {
    // await ClearData();
    Get.to(const Verifyemailscreen());
  }
}
