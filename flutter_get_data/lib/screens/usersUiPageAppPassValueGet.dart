import 'package:flutter/material.dart';
import 'package:flutter_get_data/models/modelsUsers.dart';

class UsersUiAppPassValueGet extends StatefulWidget {
  ModelsUsers _modelsUsers;
  UsersUiAppPassValueGet(this._modelsUsers):super();
  @override
  _UsersUiAppPassValueGetState createState() => _UsersUiAppPassValueGetState();
}

class _UsersUiAppPassValueGetState extends State<UsersUiAppPassValueGet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0),bottomRight: Radius.circular(50.0)),

                ),
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back,size: 25,color:Colors.white),
                              onPressed: (){
                                Navigator.pop(context);
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.list,size: 25,color:Colors.white),
                              onPressed: (){
                                print("List");
                              },
                            ),
                          ],
                        ),
                    ),
                  ],
                ),
              ),
          ),
          SizedBox(height: 10,),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(

                ),
                child: Column(
                  children: [
                    Card(
                      elevation: 20,
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(

                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(widget._modelsUsers.name),
                                  Text(widget._modelsUsers.username),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:48.0,left: 100),
                                  child: Text(widget._modelsUsers.email),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(
                      elevation: 20,
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(widget._modelsUsers.address.street),
                                  Text(widget._modelsUsers.address.suite),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(widget._modelsUsers.address.city),
                                  Text(widget._modelsUsers.address.zipcode)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(
                      elevation: 20,
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(

                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(widget._modelsUsers.phone),
                                  Text(widget._modelsUsers.website),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(
                      elevation: 20,
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(widget._modelsUsers.company.name),
                                  Text(widget._modelsUsers.company.bs),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(widget._modelsUsers.company.catchPhrase)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
