import 'package:flutter/material.dart';
import 'widgets/form.dart';
import 'widgets/appbar.dart';
import 'widgets/loginwidget.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget  {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      
      
      home: Scaffold(
        
        
        body: (
           Column(children:<Widget>[
          
         
          LoginPhoneNumber(),
        

        ],)
        
        ),
       

        ) ,
      
      
    );
  }
}
