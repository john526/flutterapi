import 'package:flutter/material.dart';
import 'package:flutter_get_data/models/modelsFirstCardPubScreenCardFirst.dart';
import 'package:flutter_get_data/models/modelsList.dart';
import 'package:flutter_get_data/screens/albumsUiPageApp.dart';
import 'package:flutter_get_data/screens/commentsUiPageApp.dart';
import 'package:flutter_get_data/screens/photosUiPageApp.dart';
import 'package:flutter_get_data/screens/postsUiPageApp.dart';
import 'package:flutter_get_data/screens/todosUiPageApp.dart';
import 'package:flutter_get_data/screens/usersUiPageApp.dart';
import 'package:flutter_get_data/services/servicesFirstCardPubScreenCardFirst.dart';
import 'package:flutter_get_data/services/servicesList.dart';


class ScreenCardFirst extends StatefulWidget {
  ScreenCardFirst():super();
  @override
  _ScreenCardFirstState createState() => _ScreenCardFirstState();
}

class _ScreenCardFirstState extends State<ScreenCardFirst> {
  List<ModelsFirstAnimeJson>_anime;
  bool _loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    ServicesAnimeJson.getAnimeJson().then((value){
      setState(() {
        _anime = value;
        _loading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                   color: Colors.green,
                   borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50.0), bottomRight: Radius.circular(50.0))
                ),
                child:Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.security,color: Colors.white,size: 25,),
                            Icon(Icons.list,color: Colors.white,size: 25,)
                          ],
                        ),
                    ),
                    SizedBox(height: 1,),
                    Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                    ),
                  ],
                ) ,
              ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(),
              child: GestureDetector(
                onTap: (){
                  print("card pub");
                },
                child: ListView.builder(
                    itemCount: _anime == null ? 0 : _anime.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext,index){
                      ModelsFirstAnimeJson anime = _anime[index];
                      return Card(
                        elevation: 10,
                        child: Container(
                          width: 100,
                          height: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.orange,
                            image:DecorationImage(
                                image: NetworkImage(anime.img),
                                fit: BoxFit.contain
                            ),
                          ),
                        ),
                      );
                },
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(

              ),
              child: ListView.builder(
                  itemCount: modelsList.length,
                  itemBuilder: (BuildContext,index){
                    ModelsList varList = modelsList[index] ;
                    return GestureDetector(
                      onTap: (){
                        print("onTap : ${varList.id}");
                        switch(varList.id){
                          case 1:
                            print("go navigate ${varList.id} =>PostsUiPageApp");
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PostsUiPageApp()));
                            break;

                          case 2 :
                            print("go navigate ${varList.id} =>CommentsUiPageApp");
                            Navigator.push(context,MaterialPageRoute(builder:(context)=>CommentsUiPageApp()));
                            break;

                          case 3 :
                            print("go navigate ${varList.id} => AlbumsUiPageApp");
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>AlbumsUiPageApp()));
                            break;

                          case 4 :
                            print("go navigate ${varList.id} => PhotosUiPageApp");
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>PhotosUiPageApp()));
                            break;

                          case 5:
                            print("go navigate ${varList.id} => ToDoUiPageApp");
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>ToDoUiPageApp()));
                            break;

                          case 6:
                            print("go navigate ${varList.id} => UsersUiPageApp");
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>UsersUiPageApp()));
                            break;
                        }
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          width: 50,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        shape:BoxShape.circle,
                                        color: Colors.red,
                                        image: DecorationImage(image: AssetImage(varList.image))
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0,top: 35),
                                    child: Column(
                                      children: [
                                        Text(varList.id.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                        Text(varList.title,style: TextStyle(fontSize: 20),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Text(varList.signature)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
