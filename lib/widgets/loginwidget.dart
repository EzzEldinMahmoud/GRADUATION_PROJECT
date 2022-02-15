import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class LoginPhoneNumber extends StatefulWidget {
  LoginPhoneNumber({Key? key}) : super(key: key);


  @override
  State<LoginPhoneNumber> createState() => _LoginPhoneNumberState();
}

class _LoginPhoneNumberState extends State<LoginPhoneNumber> {
var PhoneNumber="";

void _onCountryChange(CountryCode countryCode){
  this.PhoneNumber = countryCode.toString();
  print("new country selected: "+ countryCode.toString());
}
  TextEditingController phoneNumberhere = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    phoneNumberhere.dispose();
    super.dispose();
  }
  void check(){
print("Full Text: "+ this.PhoneNumber + phoneNumberhere.text );

}
  @override
  Widget build(BuildContext context) {
    return Center(
child:Column( 
  mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
  
 children:
 <Widget> [
      Container(
                width: double.infinity,
      
        height: 500,
        alignment: Alignment.bottomCenter,
         child: Container(
          width: 200,
          height: 200,
         decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                fit: BoxFit.cover)),
        ),
        
        
        
        
        ),
Container(
  padding: EdgeInsets.all(24.0),
  
child: TextField(
  
  controller: phoneNumberhere,
              decoration: InputDecoration(

  prefixIcon: CountryCodePicker(
     onChanged: _onCountryChange,
              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
              initialSelection: '+20',
              favorite: ['+20', 'EG'],
              textStyle: TextStyle(color: Colors.orange[900]),
              showFlag: true,
),
              border: OutlineInputBorder(),
              hintText: 'Enter Your Location',
            ),
          ),
),
      Container(
             height: 50.0,
             margin: EdgeInsets.all(10),
             child: RaisedButton(
               onPressed: () {check();},
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(80.0)),
               padding: EdgeInsets.all(0.0),
               child: Ink(
                 decoration: BoxDecoration(
                     gradient: LinearGradient(
                       colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                       begin: Alignment.centerLeft,
                       end: Alignment.centerRight,
                     ),
                     borderRadius: BorderRadius.circular(30.0)),
                 child: Container(
                   constraints:
                       BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                   alignment: Alignment.center,
                   child: Text(
                     "Let's get Started",
                     textAlign: TextAlign.center,
                     style: TextStyle(color: Colors.white, fontSize: 15),
                   ),
                 ),
               ),
             ),
           ), 



    
    ],


    )


    ); 
    
    
  }
}