

import 'package:flutter/material.dart';

  class Appbar extends StatefulWidget implements PreferredSizeWidget {
  Appbar({Key? key}) :preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);
@override
    final Size preferredSize; // default is 56.0

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     
      body: SafeArea(
        child: Row(
          
          children: <Widget>[

                IconButton(
                  alignment: Alignment.topRight
                  ,onPressed: () {
                  
                }, icon:Icon(Icons.menu,size: 30.0,))
                 ,
            Expanded(
              child: Container(
                // padding: EdgeInsets.all(30),

                child: TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
   prefixIcon:Icon(Icons.search,size: 30.0,),
   hintText:'Enter Something',
    contentPadding: EdgeInsets.all(10.0),
    ),  

    )),
              ),
              Expanded(
                child:  Container(

                ),
              
              ),
            
          ],
        ),
      ),
    );
  


 

   
   
  
        
      



    
  }}


         
      
      
  





