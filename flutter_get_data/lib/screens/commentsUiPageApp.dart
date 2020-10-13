import'package:flutter/material.dart';
import 'package:flutter_get_data/models/modelsComments.dart';
import 'package:flutter_get_data/services/serviceComments.dart';


class CommentsUiPageApp extends StatefulWidget {
  CommentsUiPageApp():super();
  @override
  _CommentsUiPageAppState createState() => _CommentsUiPageAppState();
}

class _CommentsUiPageAppState extends State<CommentsUiPageApp> {
  List<ModelsComments> _modComments;
  bool _loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    ServicesComments.getComments().then((value){
      _modComments = value;
      _loading = false;
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
                color: Colors.blue
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(
                                Icons.arrow_back,
                                size: 25,
                                color: Colors.white,
                            ),
                            onPressed: (){
                              print("return ");
                              Navigator.pop(context);
                            },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.list,
                            size: 25,
                            color: Colors.white,
                          ),
                          onPressed: (){
                            print("return ");
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.all(2),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(

              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext,index){
                    return Card(
                      elevation: 5,
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.orange
                        ),
                      ),
                    );
                  },
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(

              ),
              child: ListView.builder(
                  itemCount: _modComments == null ? 0 : _modComments.length,
                  itemBuilder: (BuildContext,index){
                    ModelsComments mod = _modComments[index];
                    return Card(
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.green
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
                                    color: Colors.blue
                                  ),
                                  child: Center(child: Text("Id: ${mod.id}")),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 5,top: 20),
                                    child: Text("PostsId : ${mod.postId}"),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,right: 30),
                              child: Text(mod.email,style: TextStyle(fontSize: 10),),
                            ),
                          ],
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
