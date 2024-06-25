import 'dart:convert';
import 'package:crafty_bay/presentation/state_holders/auth_controller.dart';
import 'package:http/http.dart';
import '../model/responce_data.dart';

class NetworkColler {
  Future<ResponceData> getRequest(String url, {String? token}) async {
    print(url);
    final Response response = await get(Uri.parse(url), headers: {
      'token': (token ?? AuthController.token).toString(),
      'Content-Type': 'application/json'
    });
    if (response.statusCode == 200) {
      print(response.statusCode.toString());
      print(response.body.toString());
      final decodeResponce = jsonDecode(response.body);
      if (decodeResponce['msg'] == 'success') {
        return ResponceData(
            isSuccess: true,
            StatusCode: response.statusCode,
            responceData: decodeResponce);
      } else {
        return ResponceData(
            isSuccess: false,
            StatusCode: response.statusCode,
            responceData: decodeResponce,
            isError: decodeResponce['data'] ?? "Some thing Wrong");
      }
    } else if (response.statusCode == 401) {
      await AuthController.ClearData();
      AuthController.gotoLogin();
      return ResponceData(
          isSuccess: false, StatusCode: response.statusCode, responceData: " ");
    } else {
      return ResponceData(
          isSuccess: false, StatusCode: response.statusCode, responceData: " ");
    }
  }

  Future<ResponceData> postRequest(String url,
      {Map<String, dynamic>? body, String? token}) async {
    print(url);
    print(body.toString());
    final Response response = await post(Uri.parse(url),
        body: jsonEncode(body),
        headers: {
          'token': AuthController.token.toString(),
          'Content-Type': 'application/json'
        });
    if (response.statusCode == 200) {
      print(response.body.toString());
      print(response.statusCode.toString());
      final decodeResponce = jsonDecode(response.body);
      if (decodeResponce['msg'] == 'success') {
        return ResponceData(
            isSuccess: true,
            StatusCode: response.statusCode,
            responceData: decodeResponce);
      } else {
        return ResponceData(
            isSuccess: false,
            StatusCode: response.statusCode,
            responceData: decodeResponce,
            isError: decodeResponce['data'] ?? "Some thing Wrong");
      }
    } else if (response.statusCode == 401) {
      await AuthController.ClearData();
      AuthController.gotoLogin();
      return ResponceData(
          isSuccess: false, StatusCode: response.statusCode, responceData: " ");
    } else {
      return ResponceData(
          isSuccess: false, StatusCode: response.statusCode, responceData: " ");
    }
  }
}
