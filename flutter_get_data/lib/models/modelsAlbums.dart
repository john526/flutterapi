
import 'dart:convert';

List<ModelsAlbums> useAlbums(String str) => List<ModelsAlbums>.from(json.decode(str).map((x)=>ModelsAlbums.fromJson(x)));
String userAl(List<ModelsAlbums> data)=>json.encode(List<dynamic>.from(data.map((x)=>x.toJson())));

class ModelsAlbums{

  int userId;
  int id;
  String title;


  ModelsAlbums({
    this.userId,
    this.id,
    this.title
});

  factory ModelsAlbums.fromJson(Map<String,dynamic> json)=>ModelsAlbums(
    userId: json['userId'],
    id:json['id'],
    title: json['title']
  );

  Map<String,dynamic> toJson()=>{
    'userId':userId,
    'id':id,
    'title':title
  };
}