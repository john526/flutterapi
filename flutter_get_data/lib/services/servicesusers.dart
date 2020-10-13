import 'package:flutter_get_data/models/modelsUsers.dart';
import'package:http/http.dart' as http;


class ServicesUsers{


  static const String url ="https://jsonplaceholder.typicode.com/users";

  static Future<List<ModelsUsers>> getUsers() async{

    try{
      final response = await http.get(url);
      if(200 == response.statusCode){
        List<ModelsUsers>users = useUsers(response.body);
        return users;
      }else{
        return List<ModelsUsers>();
      }
    }catch(e){
      return List<ModelsUsers>();
    }
  }
}