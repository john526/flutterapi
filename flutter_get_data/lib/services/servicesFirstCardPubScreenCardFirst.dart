import 'package:flutter_get_data/models/modelsFirstCardPubScreenCardFirst.dart';
import 'package:http/http.dart' as http;


class ServicesAnimeJson{


  static const String url = "https://gist.github.com/aws1994/f583d54e5af8e56173492d3f60dd5ebf";

  static Future<List<ModelsFirstAnimeJson>> getAnimeJson() async {

    try{
      final response = await http.get(url);
      if(200 == response.statusCode){
        List<ModelsFirstAnimeJson> animeJson = useAnime(response.body);
        return animeJson;
      }else{
        return List<ModelsFirstAnimeJson>();
      }
    }catch(e){
      return List<ModelsFirstAnimeJson>();
    }
  }
}



