
import 'dart:async';
import 'package:alan_flutter/inscription.dart';
import 'package:flutter/material.dart';
import 'formulaire.dart';
import 'inscription.dart';

double value=0;

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

 //@override
  //void initState() {
   // super.initState();
    //Future.delayed(const Duration(seconds: 5), () {
      //Navigator.push(context, MaterialPageRoute(builder: (context) =>const MyApps(),));
    //},);
 // }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),


        child: Column(

          children: <Widget>[


            Image.asset('images/Abode-02.png', height: MediaQuery
                .of(context)
                .size
                .height / 4, width: 90.0,),

            const SizedBox(height: 10.0),


            SizedBox(height: 10,),
            Container(

              child: Column(
                children:  <Widget>[Container

                  (




                  child: SizedBox(
                    width: MediaQuery.of(context).size.width/1.0,
                    height: 300,

                    child: Container(
                      padding:  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 1.0),

                      margin: const EdgeInsets.only(left: 50.0, right:50.0),
                      child: Column(
                        children:  [

                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 0),
                            child:  Image.asset('images/Abode-02.png', height: MediaQuery.of(context).size.height/10, width: 100.0),



                          ),
                          const SizedBox(height: 10.0),

                          Container(
                            alignment: Alignment.topCenter,
                            margin: const EdgeInsets.all(20),
                            child: const LinearProgressIndicator(
                              value: 0.7,
                              backgroundColor: Colors.grey,
                              color: Colors.purple,
                              minHeight: 10,
                          ),
                          ),
                        ],
                      ),

                    ),





                  ),

                )


                ],
              ),
            ),
          ],

        ),

      ),


    );
  }

}


