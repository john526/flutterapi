
import 'dart:convert';

List<ModelsFirstAnimeJson>useAnime(String str) => List<ModelsFirstAnimeJson>.from(json.decode(str).map((x)=>ModelsFirstAnimeJson.fromJson(x)));
String userAnimeJson(List<ModelsFirstAnimeJson> data)=>json.encode(List<dynamic>.from(data.map((x)=>x.toJson())));

class ModelsFirstAnimeJson{
  String name;
  String description;
  String Rating;
  int episode;
  String category;
  String studio;
  String img;

  ModelsFirstAnimeJson({
    this.name,
    this.description,
    this.Rating,
    this.episode,
    this.category,
    this.studio,
    this.img
  });

  factory ModelsFirstAnimeJson.fromJson(Map<String,dynamic> json)=>ModelsFirstAnimeJson(
    name: json['name'],
    description: json['description'],
    Rating: json['Rating'],
    episode: json['episode'],
    category: json['category'],
    studio: json['studio'],
    img: json['img']
  );

  Map<String,dynamic> toJson()=>{
    'name':name,
    'description':description,
    'Rating':Rating,
    'episode':episode,
    'category':category,
    'studio':studio,
    'img':img
  };
}


//https://gist.github.com/aws1994/f583d54e5af8e56173492d3f60dd5ebf