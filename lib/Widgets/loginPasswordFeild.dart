import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class CustomerLoginPasswordWidget extends StatefulWidget{


  _CustomerLoginPasswordWidget createState()=> _CustomerLoginPasswordWidget();
}

class _CustomerLoginPasswordWidget extends State<CustomerLoginPasswordWidget>{

  final customerLoginPasswordController = TextEditingController();

  //String customerNames;


  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: customerLoginPasswordController,
      keyboardType: TextInputType.number,
      maxLength: 4,
      obscureText: true,
      textInputAction: TextInputAction.done,
      //Decoration
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          prefixIcon: Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.phonelink_setup,
                color: Colors.green,
              )),
          labelText: 'Password',
          helperText: 'Key in your password'
      ),
    );
  }
}