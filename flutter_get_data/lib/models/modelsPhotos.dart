
import 'dart:convert';

List<ModelsPhotos> usePhotos(String str) => List<ModelsPhotos>.from(json.decode(str).map((x)=>ModelsPhotos.fromJson(x)));
String usePho(List<ModelsPhotos> data)=>json.encode(List<dynamic>.from(data.map((x)=>x.toJson())));

class ModelsPhotos{

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  ModelsPhotos({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl
});

  factory ModelsPhotos.fromJson(Map<String,dynamic> json)=> ModelsPhotos(
    albumId:json['albumId'],
    id:json['id'],
    title:json['title'],
    url:json['url'],
    thumbnailUrl:json['thumbnailUrl']
  );

  Map<String,dynamic> toJson()=>{
    'albumId':albumId,
    'id':id,
    'title':title,
    'url':url,
    'thumbnailUrl':thumbnailUrl
  };

}