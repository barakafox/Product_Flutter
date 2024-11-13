import 'package:dio/dio.dart';
import '../Model/register_model.dart';

class RegisterService {
  static Dio dio = Dio();

  static Future<RegistrationModel> register(String name, String email, int phone, String password) async {
    try {
      Response response = await dio.post(
        "https://student.valuxapps.com/api/register",
        data: {
          "name": name,
          "email": email,
          "phone": phone,
          "password": password,
        },
      );
      if (response.statusCode == 200) {
        print(response.data);
        return RegistrationModel.fromjson(response.data);
      } else {
        throw Exception("Server Error");
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  static Future<RegistrationModel> login(String email, String password) async {
    try {
      Response response = await dio.post(
        "https://student.valuxapps.com/api/login",
        data: {
          "email": email,
          "password": password,
        },
      );
      if (response.statusCode == 200) {
        print(response.data);
        return RegistrationModel.fromjson(response.data);
      } else {
        throw Exception("Server Error");
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
