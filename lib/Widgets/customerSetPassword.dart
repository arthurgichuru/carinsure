import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class CustomerSetPasswordWidget extends StatefulWidget{


  _CustomerSetPasswordWidget createState()=> _CustomerSetPasswordWidget();
}

class _CustomerSetPasswordWidget extends State<CustomerSetPasswordWidget>{

  final customerSetPasswordController = TextEditingController();

  //String customerNames;


  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: customerSetPasswordController,
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
          labelText: 'Set Password',
          helperText: 'Set a password you can remember'
      ),
    );
  }
}