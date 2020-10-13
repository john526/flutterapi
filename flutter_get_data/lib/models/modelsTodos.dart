
import 'dart:convert';

List<ModelsTodos>useTodos(String str) => List<ModelsTodos>.from(json.decode(str).map((x)=>ModelsTodos.fromJson(x)));

String useTo(List<ModelsTodos> data)=>json.encode(List<dynamic>.from(data.map((x)=>x.toJson())));

class ModelsTodos{

  int userId;
  int id;
  String title;
  String completed;

  ModelsTodos({
    this.userId,
    this.id,
    this.title,
    this.completed
});

  factory ModelsTodos.fromJson(Map<String,dynamic> json)=>ModelsTodos(
    userId:json['userId'],
    id:json['id'],
    title:json['title'],
    completed:json['completed']
  );

  Map<String,dynamic> toJson()=>{
    'userId':userId,
    'id':id,
    'title':title,
    'completed':completed
  };
}