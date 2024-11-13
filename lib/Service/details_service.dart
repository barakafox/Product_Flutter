import 'package:assesment_flutter/Model/details_model.dart';
import 'package:dio/dio.dart';

class DetailsService{
  static Dio dio = Dio();
  
 static Future<DetailsModel> getData() async{
    try{
      Response response = await dio.get('https://student.valuxapps.com/api/home');
      if(response.statusCode == 200){
        return DetailsModel.fromjson(response.data);
      }else{
        throw Exception('Error');
      }
    }
    catch(e){
      throw Exception("Find $e");
    }
  }
}