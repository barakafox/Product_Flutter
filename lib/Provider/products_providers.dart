import 'package:assesment_flutter/Model/details_model.dart';
import 'package:assesment_flutter/Model/product_model.dart';
import 'package:assesment_flutter/Service/details_service.dart';
import 'package:assesment_flutter/Service/product_service.dart';
import 'package:assesment_flutter/Service/register_service.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  ProductModel? productModel;

  // Function to register a new user
  Future<void> signup(String name, String email, int phone, String password) async {
    try {
      var registrationModel = await RegisterService.register(name, email, phone, password);
      notifyListeners();
    } catch (e) {
      print('Registration Error: $e');
    }
  }

  // Function to login a user
  Future<void> login(String email, String password) async {
    try {
      var loginModel = await RegisterService.login(email, password);
      notifyListeners();
    } catch (e) {
      throw Exception('Login Error: $e');
    }
  }

  Future<void> fetchData() async {
    try {
      productModel = await ProductService.getData();
      notifyListeners();
    } catch (e) {
      print('Fetch Data Error: $e');
    }
  }
}
