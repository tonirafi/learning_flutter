import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../model/user.dart';
import 'package:http/http.dart' as http;


class UsersProvider extends ChangeNotifier {
    List<User>? _allUser = [];
   User? _user;

  List<User> get allUser {
    return [...?_allUser];
  }

  User? get user {
    return _user;
  }

  void addUser(User user){
    _allUser!.add(user);
    notifyListeners();
  }

  void getData() async{
    Uri uri=Uri.parse("https://reqres.in/api/users/2");
    var respone = await http.get(uri);
    if(respone.statusCode ==200){
      Map<String,dynamic> dataJson =(json.decode(respone.body) as Map<String,dynamic>);
      var data= User.fromJson(dataJson);
      _user = data;
    }else{

    }
    notifyListeners();
  }
}
