import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../model/user.dart';

class ApiProvider {
  final Dio _dio = Dio();

  final String _url = 'https://reqres.in/api/users/2';

  Future<User> fetchUser() async {
    try {
      Response response = await _dio.get(_url);
      return User.fromJson(response.data);
    } catch (error, stacttrace) {
      if (kDebugMode) {
        print(" $error $stacttrace");
      }
      return User();
    }
  }
}
