import 'package:flutter_get_data/models/modelsPosts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_get_data/models/modelsList.dart';

class ServicesPosts{


  static const String url="https://jsonplaceholder.typicode.com/posts";

  static Future<List<ModelsPosts>> getPosts() async{

    try{
      final response = await http.get(url);
      if(200 == response.statusCode){
        final List<ModelsPosts> mPosts = modelPosts(response.body);
        return mPosts;
      }
      else{
        return List<ModelsPosts>();
      }
    }catch(e){
      return List<ModelsPosts>();
    }
  }
}