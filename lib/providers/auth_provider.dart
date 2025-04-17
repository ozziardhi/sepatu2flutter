import 'package:flutter/material.dart';
import 'package:tokosepatu/models/usermodel.dart';
import 'package:tokosepatu/service/auth_service.dart';

class AuthProvider with ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  set user(UserModel? user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {

    try{
      UserModel user= await AuthService().register(
        name:  name,
        username:  username,
        email:  email,
        password:  password,
      );

      _user = user;
      return true;

    } catch (e){
      debugPrint(e.toString());
      return false;
    }
  }
}
