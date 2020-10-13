import 'package:flutter_get_data/models/modelsComments.dart';
import 'package:http/http.dart' as http;



class ServicesComments{


  static const String url = "https://jsonplaceholder.typicode.com/comments";

  static Future<List<ModelsComments>> getComments() async{

    try{
      final response = await http.get(url);
      if(200 == response.statusCode){
        List<ModelsComments> comments = userComments(response.body);
        return comments;
      }else{
        return List<ModelsComments>();
      }
    }catch(e){
      return List<ModelsComments>();
    }
  }
}