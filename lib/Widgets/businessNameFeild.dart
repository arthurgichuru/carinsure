import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class BusinessNameWidget extends StatefulWidget{


  _BusinessNameWidget createState()=> _BusinessNameWidget();
}

class _BusinessNameWidget extends State<BusinessNameWidget>{

  final businessNameController = TextEditingController();

  //String customerNames;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: businessNameController,
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
                Icons.person,
                color: Colors.green,
              )),
          labelText: 'Registered Business Name',
          helperText: 'Names as per KRA Pin '
      ),
    );
  }
}