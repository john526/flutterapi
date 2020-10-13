import 'package:flutter/material.dart';
import 'package:flutter_get_data/screens/presentationWelcomePage.dart';
import 'package:flutter_get_data/screens/screenCardFirst.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePresentation extends StatefulWidget {
  @override
  _HomePresentationState createState() => _HomePresentationState();
}

class _HomePresentationState extends State<HomePresentation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            colors: [
              HexColor("#73c849"),
              HexColor("#373b44")
            ],
            begin: Alignment.topLeft,
            end: Alignment(0.8,0.0)
          ),
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeUiPageApp()));
                print("go => 1");
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 300),
                child: Center(
                  child: Text("Api Get ",style:TextStyle(color:Colors.white,fontSize: 25),),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeUiPageApp()));
          print("go to Welcome page");
        },
        child: Icon(Icons.arrow_forward),
        backgroundColor: Colors.green.withOpacity(0.6),
      ),
    );
  }
}
