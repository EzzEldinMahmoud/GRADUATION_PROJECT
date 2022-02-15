import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}


class MyCustomFormState extends State<MyCustomForm> {
  final LocationController = TextEditingController();
  final APTNOController = TextEditingController();
  final CONTACTNUMController = TextEditingController();
  final USERNAMEController = TextEditingController();
 
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    LocationController.dispose();
    APTNOController.dispose();
    CONTACTNUMController.dispose();
    USERNAMEController.dispose();

    super.dispose();
  }
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                 SizedBox( height: 25.0, ),
 
 Padding(
 padding:  EdgeInsets.all(10),
           child: TextField(
               controller: LocationController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Your Location',
            ),
          ),
        ),
        SizedBox( height: 15.0, ),
         Padding(
 padding:  EdgeInsets.all(10),
           child: TextField(
             controller:APTNOController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your Apartment Number',
            ),
          ),
        ),
        SizedBox( height: 15.0, ),
         Padding(
 padding:  EdgeInsets.all(10),
           child: TextField(
              controller:CONTACTNUMController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Contact Number',
            ),
          ),
        ),
        SizedBox( height: 15.0, ),
         Padding(
          padding:  EdgeInsets.all(10),
          child: TextField(
                         controller:USERNAMEController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter UserName',
            ),
          ),
        ),
       SizedBox( height: 15.0, ),
          Center(  
              child: FlatButton(  
                child: Text('Continue', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white,  
                onPressed: () {
 showDialog(
            context: context,
            builder: (context) {
               return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(LocationController.text),
              );
               
              
            },
          );


                },  
              ), ) 
        ],
      ),
    );
  }
}