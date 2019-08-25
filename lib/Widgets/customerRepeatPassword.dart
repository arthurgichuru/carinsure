import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class CustomerRepeatPasswordWidget extends StatefulWidget{


  _CustomerRepeatPasswordWidget createState()=> _CustomerRepeatPasswordWidget();
}

class _CustomerRepeatPasswordWidget extends State<CustomerRepeatPasswordWidget>{

  final customerRepeatPasswordController = TextEditingController();

  //String customerNames;


  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: customerRepeatPasswordController,
      keyboardType: TextInputType.number,
      obscureText: true,
      maxLength: 4,
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
          labelText: 'Repeat Password',
          helperText: 'Make sure your repeat same password'
      ),
    );
  }
}