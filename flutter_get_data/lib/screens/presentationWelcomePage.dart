import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_get_data/screens/screenCardFirst.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomeUiPageApp extends StatefulWidget {
  WelcomeUiPageApp():super();
  @override
  _WelcomeUiPageAppState createState() => _WelcomeUiPageAppState();
}

class _WelcomeUiPageAppState extends State<WelcomeUiPageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        HexColor("#7ac849"),
                        HexColor("#371b44")
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment(0.8,0.3)
                  ),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(350),),
                ),
                child: Center(
                  child: Text("Welcome",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
          ),
          SizedBox(height: 15,),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  //color: Colors.red
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry\n'),
                    Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry\n'),
                    Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry\n')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            print("go to ScreenCardFirst");
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenCardFirst()));
          },
        child: Icon(Icons.arrow_forward),
        backgroundColor: Colors.green.withOpacity(0.3),
      ),
    );
  }
}
