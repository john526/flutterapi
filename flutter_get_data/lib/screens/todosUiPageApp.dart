import 'package:flutter/material.dart';
import 'package:flutter_get_data/models/modelsTodos.dart';
import 'package:flutter_get_data/services/servicesTodos.dart';


class ToDoUiPageApp extends StatefulWidget {
  @override
  _ToDoUiPageAppState createState() => _ToDoUiPageAppState();
}

class _ToDoUiPageAppState extends State<ToDoUiPageApp> {
  List<ModelsTodos>_modTodos;
  bool _loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    ServicesTodos.getTodos().then((value) {
      setState(() {
        _modTodos = value;
        _loading=false;
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
                  color: Colors.green
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
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
                            print("return");
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
                            print("return");
                          },
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25),
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
                itemCount: 12,
                itemBuilder: (BuildContext,index){
                  return Card(
                    child: Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey
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
                itemCount: _modTodos == null ? 0 : _modTodos.length,
                itemBuilder: (BuildContext,index){
                  ModelsTodos mTodos = _modTodos[index];
                  return GestureDetector(
                    onTap: (){
                      print("onTap : id ${mTodos.id} => userId ${mTodos.userId}");
                    },
                    child: Card(
                      child: Container(
                        width: 100,
                        height: 90,
                        decoration: BoxDecoration(
                            color:Colors.orange
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color:Colors.blue,
                                      shape: BoxShape.circle
                                  ),
                                  child: Center(child: Text(mTodos.userId.toString())),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 40,left: 15),
                                  child: Column(
                                    children: [

                                      Text("Id ${mTodos.id}")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text("UserdId ${mTodos.userId}"),
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
