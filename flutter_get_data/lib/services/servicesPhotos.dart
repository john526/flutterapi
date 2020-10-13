import 'package:flutter_get_data/models/modelsPhotos.dart';
import'package:http/http.dart' as http;


class ServicesPhotos{

  static const String url ="https://jsonplaceholder.typicode.com/photos";

  static Future<List<ModelsPhotos>> getPhotos() async{

    try{
      final response = await http.get(url);
      if(200 == response.statusCode){
        List<ModelsPhotos> photos = usePhotos(response.body);
        return photos;
      }else{
        return List<ModelsPhotos>();
      }
    }catch(e){
      return List<ModelsPhotos>();
    }
  }
}