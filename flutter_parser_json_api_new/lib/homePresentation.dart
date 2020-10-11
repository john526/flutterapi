import 'package:flutter/material.dart';
import 'package:flutter_parser_json_api_new/models/modelClassUsers.dart';
import 'package:flutter_parser_json_api_new/service/serviceModel.dart';
class HomePresentation extends StatefulWidget {

  HomePresentation():super();
  @override
  _HomePresentationState createState() => _HomePresentationState();
}

class _HomePresentationState extends State<HomePresentation> {

  List<ModelUsers> _usersModel;
  bool _loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    Services.getUsersModel().then((value){
      setState(() {
        _usersModel = value;
        _loading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Parser"),
        centerTitle: true,
      ),
      body:ListView.builder(
          itemCount: null == _usersModel ? 0 :_usersModel.length,
          itemBuilder: (context, index){
            ModelUsers user = _usersModel[index];
            return ListTile(
              title: Text(user.name),
              subtitle: Text(user.username),
            );
          },
      ),
    );
  }
}


//https://medium.com/@vipinvijayan23/easily-parse-complex-json-create-json-model-classes-show-in-listview-e087ecdee988
//https://medium.com/flutter-community/parsing-complex-json-in-flutter-747c46655f51
//https://app.quicktype.io/
