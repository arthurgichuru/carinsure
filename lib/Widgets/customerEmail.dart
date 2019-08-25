import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class CustomerEmail extends StatefulWidget{


  _CustomerEmail createState()=> _CustomerEmail();
}

class _CustomerEmail extends State<CustomerEmail>{

  final customerEmailController = TextEditingController();

  //String customerNames;


  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: customerEmailController,
      keyboardType: TextInputType.text,
      maxLength: 30,
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