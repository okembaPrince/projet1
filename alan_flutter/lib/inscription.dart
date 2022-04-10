

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

var errorNom, errorPrenom, errorEmail, errorPassword;
bool password=true;

TextEditingController ctrlPassword= TextEditingController();
TextEditingController ctrNom= TextEditingController();
TextEditingController ctrPrenom= TextEditingController();
TextEditingController ctrMail= TextEditingController();

var _formKey= GlobalKey<FormState>();

class MyApps extends StatefulWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(

      body: SingleChildScrollView(

       child: Container(
        padding:  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),

         margin: const EdgeInsets.only(left: 50.0, right:50.0),

         child: Form(

           child: Padding(
             padding: const EdgeInsets.all(8.0),

             child: Column(



               children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    margin: const EdgeInsets.only(left: 0, right:200.0),
                   child: Image.asset('images/Abode-02.png', height: MediaQuery.of(context).size.height/10, width: 60.0,alignment: Alignment.topLeft),
                  ),



                 const SizedBox(height: 4.0),
                   Center(

                   child: Text('Créer votre compte Abode ',
                    style: Theme.of(context).textTheme.subtitle1),

                    ),
                   const SizedBox(height: 10),
                 // const Padding(padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                //  ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
                        child:TextFormField(
                          style: const TextStyle(height: 0.1, fontSize: 15),
                          key: _formKey,
                          controller: ctrNom,
                          decoration:  InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            labelText: "Nom",
                            errorText: errorNom,

                            labelStyle: const TextStyle(fontSize: 20, color: Colors.grey),

                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:const BorderSide(color: Colors.grey,style: BorderStyle.solid, width: 2.0)),


                          ),

                        ),

                      ),
                 const SizedBox(height: 15,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
                    child:  TextFormField(
                      style: const TextStyle(height: 0.1, fontSize: 15),
                      controller: ctrPrenom,


                      decoration:  InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(20),gapPadding: 0
                        ),
                        labelText: 'Prénom',
                        errorText: errorPrenom,
                        labelStyle: const TextStyle(fontSize: 17, color: Colors.grey,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:const BorderSide(color: Colors.grey,style: BorderStyle.solid, width: 2.0)),

                      ),

                    ),

                  ),
                 const SizedBox(height: 15),
                 Container(

                   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
                   child:
                   TextFormField(
                     style: const TextStyle(height: 0.1, fontSize: 15),
                     controller: ctrMail,

                     decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                       ),
                       focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20)
                       ),
                       labelText: 'E-mail',
                       errorText: errorEmail,
                       labelStyle:const TextStyle(fontSize: 17, color: Colors.grey),
                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:const BorderSide(color: Colors.grey,style: BorderStyle.solid, width: 2.0)),
                     ),
                   ),

                 ),
                 const SizedBox(height: 15,),
                 Container(
                     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
                     child:TextFormField(
                       style: const TextStyle(height: 0.1, fontSize: 15),
                       controller: ctrlPassword,
                       decoration:  InputDecoration(
                           enabledBorder: OutlineInputBorder(
                             borderRadius:  BorderRadius.circular(20),
                             gapPadding: 0,
                           ),
                           focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.grey,style: BorderStyle.solid, width: 2.0)

                           ),

                           labelText: 'Mot de passe',
                           errorText: errorPassword,
                           labelStyle: const TextStyle(fontSize: 17, color: Colors.grey,),
                           border:  OutlineInputBorder( borderRadius: BorderRadius.circular(30),borderSide: const BorderSide(color: Colors.grey,style: BorderStyle.solid, width: 2.0)),

                           suffixIcon: IconButton(onPressed: (){
                             setState(() {
                               password= ! password;

                             });

                           }, icon: Icon(password ? Icons.visibility: Icons.visibility_off), iconSize: 25.0,)

                       ),
                       obscureText: password,


                     ),
                 ),


                 const SizedBox(height: 30.0 ),
                    RaisedButton(onPressed: (){
                      setState(() {
                        if(ctrNom.text==""){
                          errorNom="Veillez entrer votre nom";
                        } else
                          {
                            errorNom=null;
                          }

                        if(ctrPrenom.text==""){
                          errorPrenom="Veillez entrer votre prenom";
                        } else {
                          errorPrenom=null;
                        }
                        if(ctrMail.text==""){
                          errorEmail="Veillez entrer votre adresse E-mail";
                        } else {
                          errorEmail=null;
                        }
                        if(ctrlPassword.text=="") {
                          errorPassword="Veillez entrer votre mot de passe";
                        } else {
                          errorPassword=null;
                        }
                        if(ctrlPassword.text !="" && ctrMail.text !="" && ctrPrenom.text !="" && ctrNom.text !=""){
                          print("BONJOUR");
                        }


                      });

                    },
                        focusElevation: 10.0,

                      child: const Text('Se connecter ', textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),), color: Colors.blue, textColor: Colors.white, elevation: 10.5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 12.0),  ),

                 const SizedBox(height: 12),
                const Text("Mot de passe ou Adresse mail non valide", style: TextStyle(fontSize: 11, color: Colors.redAccent),),

                 const SizedBox(height: 12),
                 Row(mainAxisAlignment: MainAxisAlignment.center,
                  children:  <Widget>[
                 const Text("Avez-vous un compte ? ", style: TextStyle(fontSize: 13, color: Colors.grey),),
                    FlatButton(onPressed: (){

                    }, child:const Text("Se connecter", style: TextStyle(fontSize: 15, color: Colors.blue,),) )

                  ],
                  ),
              ],

             ),
           ),

         ),


       ),
      ),

    );


  }
}