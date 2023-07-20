import 'package:bloc_cubit_with_hive/model/Model.dart';
import 'package:dio/dio.dart';

class Service {
  Future<dynamic> getData() async {
    try {
      Response response = await Dio().get("https://api.publicapis.org/entries");
      if (response.statusCode == 200) {
        print("succes service");
        return Model.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioException catch (e) {
      return e.message.toString();
    }
  }
}
