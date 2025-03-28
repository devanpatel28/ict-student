import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import '../Model/user_data_model.dart';
import '../Network/API.dart';

class LogoutController extends GetxController {

  //Logout
  Future<bool> logout(String username) async {
    try {
      Map<String, String> body = {
        'username': username,
      };
      final response = await http.post(
        Uri.parse(validateLogoutAPI),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': validApiKey,
        },
        body: json.encode(body),
      );

      if (response.statusCode == 200) {
        // final responseData = json.decode(response.body);

        // UserData userData = UserData.fromJson(responseData);

        final box = GetStorage();
        // await CachedNetworkImage.evictFromCache(
        //     studentImageAPI(userData.studentDetails!.studentId));
        await box.write('loggedin', false);
        await box.write('userdata', null);
        Get.offNamed('/login');

        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
