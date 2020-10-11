import 'package:flutter_parser_json_api_new/models/modelClassUsers.dart';
import'package:http/http.dart' as http;



class Services{
  static const String url = 'https://jsonplaceholder.typicode.com/users';

  static Future<List<ModelUsers>> getUsersModel() async{
    try{
      final  response = await http.get(url);

      if (200 == response.statusCode){
        final List<ModelUsers> usersModel = userFromJson(response.body);
        return usersModel;
      }else{
        return List<ModelUsers>();
      }
    }
    catch(e){
      return List<ModelUsers>();
    }
  }
}