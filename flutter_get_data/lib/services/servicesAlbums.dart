import 'package:http/http.dart' as http;
import 'package:flutter_get_data/models/modelsAlbums.dart';

class ServicesAlbums{


  static const String url = "https://jsonplaceholder.typicode.com/albums";

  static Future<List<ModelsAlbums>> getAlbums() async{

    try{
      final response = await http.get(url);
      if(200 == response.statusCode){
        List<ModelsAlbums> albums = useAlbums(response.body);
        return albums;
      }
      else{
        return List<ModelsAlbums>();
      }
    }catch(e){
      return List<ModelsAlbums>();
    }
  }
}