import 'package:flutter_get_data/models/modelsTodos.dart';
import'package:http/http.dart' as http;


class ServicesTodos{


  static const String url="https://jsonplaceholder.typicode.com/todos";

  static Future<List<ModelsTodos>> getTodos() async{

    try{
      final response = await http.get(url);
      if(200 == response.statusCode){
        List<ModelsTodos> todos = useTodos(response.body);
        return todos;
      }else{
        return List<ModelsTodos>();
      }
    }catch(e){
      return List<ModelsTodos>();
    }
  }
}