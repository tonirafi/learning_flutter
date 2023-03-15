

import 'package:learning_flutter/resource/api_provider.dart';

import '../model/user.dart';

class ApiRepository{
  final _provider = ApiProvider();

  
  Future<User> fetchUser(){
    return _provider.fetchUser();
  }
}