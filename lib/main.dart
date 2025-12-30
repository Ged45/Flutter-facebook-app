import 'dart:async';
import 'auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'home/screens/face_home_screen.dart';
void main() {
  runApp(const facebook());
}

class facebook extends StatelessWidget {
  const facebook({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(

        //add face_home_screen.dart here
    

        body: Center(
         
          child:Column( 
            // center the column contents
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
            //add fcebook icon button and when clicked it should navigate to Home screen


             Builder(
  builder: (context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FacebookLoginPage()),
      );
    });

    return const Icon(
      Icons.facebook,
      size: 50.0,
      color: Colors.blue,
    );
  },
),

            ]

           ),
          
        )
      )
      
      
    );
  }
}