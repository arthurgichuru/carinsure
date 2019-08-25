import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class CustomerFirstNameWidget extends StatefulWidget{


  _CustomerFirstNameWidget createState()=> _CustomerFirstNameWidget();
}

class _CustomerFirstNameWidget extends State<CustomerFirstNameWidget>{

  final customerFirstNameController = TextEditingController();

  //String customerNames;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: customerFirstNameController,
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
        labelText: 'First name',
        helperText: 'Names as per ID'
      ),
    );
  }
}