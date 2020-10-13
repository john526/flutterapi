
import 'dart:convert';

import 'package:http/http.dart';

List<ModelsComments>userComments(String str)=> List<ModelsComments>.from(json.decode(str).map((x)=>ModelsComments.fromJson(x)));

String user(List<ModelsComments> data)=>json.encode(List<dynamic>.from(data.map((x)=>x.toJson())));

class ModelsComments{

  int postId;
  int id;
  String name;
  String email;
  String body;


  ModelsComments({
    this.postId,
    this.id,
    this.name,
    this.email,
    this.body
});

  factory ModelsComments.fromJson(Map<String,dynamic> json)=>ModelsComments(
    postId: json['postId'],
    id:json['id'],
    name: json['name'],
    email:json['email'],
    body: json['body']
  );
  Map<String,dynamic> toJson()=>{
    'postId':postId,
    'id':id,
    'name':name,
    'email':email,
    'body':body
  };

}