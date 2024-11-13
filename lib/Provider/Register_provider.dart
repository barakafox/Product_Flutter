import 'package:assesment_flutter/Service/register_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../Model/register_model.dart';

class RegisterProvider extends ChangeNotifier {
  RegistrationModel? registrationModel;

  Future<bool> signup(name, email, phone, password) async
  {
    try {
        await RegisterService.register(name, email, phone, password);
        notifyListeners();
        return true;
    }
    catch (e) {
      print(e);
    }
    return false;
  }

  Future<bool> login(email, password) async {
    try {
        await RegisterService.login(email,password);
        notifyListeners();
        return true;
    } catch (e) {
      throw Exception('Find this $e');
    }
    return false;
  }
}
