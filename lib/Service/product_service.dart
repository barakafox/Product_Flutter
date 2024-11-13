import 'package:assesment_flutter/Model/product_model.dart';
import 'package:dio/dio.dart';

class ProductService{
  static Dio dio = Dio();

  static Future<ProductModel> getData() async {
    try{
      Response response = await dio.get('https://student.valuxapps.com/api/home');
      if (response.statusCode == 200) {
        return ProductModel.fromjson(response.data);
      }else{
        throw Exception('This Error');
      }
    }

   catch(e){
      throw Exception('Find This $e');
   }
  }
}