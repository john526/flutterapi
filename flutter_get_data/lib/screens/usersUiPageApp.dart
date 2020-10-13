import 'package:flutter/material.dart';
import 'package:flutter_get_data/models/modelsUsers.dart';
import 'package:flutter_get_data/screens/usersUiPageAppPassValueGet.dart';
import 'package:flutter_get_data/services/servicesusers.dart';


class UsersUiPageApp extends StatefulWidget {
  @override
  _UsersUiPageAppState createState() => _UsersUiPageAppState();
}

class _UsersUiPageAppState extends State<UsersUiPageApp> {
  List<ModelsUsers>_modUsers;
  bool _loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    ServicesUsers.getUsers().then((value) {
      setState(() {
        _modUsers = value;
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
                itemCount: _modUsers == null ? 0 : _modUsers.length,
                itemBuilder: (BuildContext,index){
                  ModelsUsers mUsers = _modUsers[index];
                  return GestureDetector(
                    onTap: (){
                      print("onTap : id ${mUsers.address.geo.lat} => userId ${mUsers.address.geo.lng}");
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>UsersUiAppPassValueGet(mUsers)));
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
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(child: Text(mUsers.name,style: TextStyle(fontSize: 10),)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 40,left: 15),
                                  child: Column(
                                    children: [

                                      Text("Id ${mUsers.id}")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text("Username ${mUsers.username}"),
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
