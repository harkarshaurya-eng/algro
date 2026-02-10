import 'package:dartpractice/login.dart';
import 'package:dartpractice/signup.dart';
import 'package:flutter/material.dart';
import 'dart:io';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: HomePage(),
  ));
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
           child: Container(
             width: double.infinity,
             height: MediaQuery.of(context).size.height,
             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                 Column(
                   children: <Widget>[
                     Text(
                       "PactPay",
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 50,

                       ),
                     ),
                     SizedBox(
                       height: 20,
                     ),
                     Text("Escrow like platform for freelanceras",textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Colors.cyan[700],
                       fontSize: 30,
                     ),
                     ),
                   ],
                 ),
                 Container(
                   height: MediaQuery.of(context).size.height /5 ,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage("assets/logo.png"),
                     ),
                   ),
                 ),
                 Column(
                   children: <Widget>[
                     //The login botton
                     MaterialButton(minWidth:double.infinity,
                       height: 60,
                       onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                       },
                       shape: RoundedRectangleBorder(
                         side: BorderSide(
                           color: Colors.black
                         ),
                            borderRadius: BorderRadius.circular(50)
                       ),
                       child:  Text(
                         "Login",
                         style:TextStyle(
                           fontWeight: FontWeight.w600,
                            fontSize: 18
                         )
                       ),
                     ),
                      //creating the signup botton
                        SizedBox(height:20),
                     MaterialButton(
                       minWidth: double.infinity,
                       height: 60,
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                       },
                       color: Color(0xff0095FF),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(50)

                       ),
                       child: Text(
                         "Sign Up",
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.w600,
                           fontSize: 18
                         )
                       )
                     )
                   ]
                 )
               ],
             ),
           ),
      ),
    );
  }
}
