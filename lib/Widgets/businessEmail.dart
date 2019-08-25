import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class RegisteredBusinessEmail extends StatefulWidget{


  _RegisteredBusinessEmail createState()=> _RegisteredBusinessEmail();
}

class _RegisteredBusinessEmail extends State<RegisteredBusinessEmail>{

  final businessEmailController = TextEditingController();

  //String customerNames;


  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: businessEmailController,
      keyboardType: TextInputType.text,
      maxLength: 10,
      textInputAction: TextInputAction.done,

      //Decoration
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          prefixIcon: Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.email,
                color: Colors.green,
              )),
          labelText: 'Email',
          helperText: 'We will communicate through your email'
      ),
    );
  }
}