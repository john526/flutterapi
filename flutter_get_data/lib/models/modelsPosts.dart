
import 'dart:convert';

List<ModelsPosts> modelPosts(String str) => List<ModelsPosts>.from(json.decode(str).map((x)=>ModelsPosts.fromJson(x)));
String posts(List<ModelsPosts> data)=> json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelsPosts{
  int userId;
  int id;
  String title;
  String body;

  ModelsPosts({
    this.userId,
    this.id,
    this.title,
    this.body
});

  factory ModelsPosts.fromJson(Map<String,dynamic> json)=>ModelsPosts(
    userId: json['userId'],
    id: json['id'],
    title: json['title'],
    body: json['body']
  );

  Map<String, dynamic> toJson()=>{
    'userId':userId,
    'id':id,
    'title':title,
    'body':body
  };

}