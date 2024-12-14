import 'package:dio/dio.dart';

class DataService {
  //jika menggunakan android studio
  // final String _url = "http://10.0.2.2:8000/api/";

  //jika menggunakan web
  final String _url = "http://localhost:8000/api/";

  Dio dio = Dio();

  LoginService(String username, String password) async{
    final response = await dio.post(_url + 'login', data: {
      'username': username,
      'password': password,
    });
    return response.data;
  }
}
