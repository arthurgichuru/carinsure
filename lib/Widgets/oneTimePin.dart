import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class OneTimePinWidget extends StatefulWidget{


  _OneTimePinWidget createState()=> _OneTimePinWidget();
}

class _OneTimePinWidget extends State<OneTimePinWidget>{

  final oneTimePinController = TextEditingController();

  //String customerNames;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: oneTimePinController,
      keyboardType: TextInputType.number,
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
                Icons.system_update,
                color: Colors.green,
              )),
          labelText: 'One Time Pin',
          helperText: 'Please enter pin sent through SMS'
      ),
    );
  }
}