
import 'dart:async';
import 'package:alan_flutter/inscription.dart';
import 'package:flutter/material.dart';
import 'formulaire.dart';
import 'inscription.dart';

double value  = 0;

void main() {
  runApp(const MaterialApp(
    home: MyApps(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

 @override
  void initState() {
    super.initState();
    Timer.periodic(
        const Duration(seconds: 1),
            (Timer timer){
          setState(() {
            if(value >= 1) {
              timer.cancel();
             // Navigator.push(context, MaterialPageRoute(builder: (context) =>const MyApps(),));
            }
            else {
              value = value + 0.1;

            }
          });
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body: SingleChildScrollView(
padding:const EdgeInsets.symmetric(horizontal: 25, vertical: 250) ,

          child: Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 20),

              child: Column(
                  children:[
                    Center(
                      child: Container(
                        child: Image.asset('images/Abode-02.png', height: MediaQuery.of(context).size.height/10, width: 120.0),
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      ),
                    ),


                    Container(

                      margin: const EdgeInsets.only(left: 50.0, right:50.0),
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.blue[200],
                        color: Colors.deepPurple,
                        minHeight: 7,
                        value: value,
                      ),
                    ),
                   
                  ]
              )
          ),
        )
    );
  }

  @override
  void sinitState(){
    super.initState();
    Timer.periodic(
        Duration(seconds: 1),
            (Timer timer){
          setState(() {
            if(value == 1.1) {
              timer.cancel();
            }
            else {
              value = value + 0.1;
            }
          });
        }
    );
  }

}

