import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class CustomerLastNameWidget extends StatefulWidget{


  _CustomerLastNameWidget createState()=> _CustomerLastNameWidget();
}

class _CustomerLastNameWidget extends State<CustomerLastNameWidget>{

  final customerLastNameController = TextEditingController();

  //String customerNames;


  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: customerLastNameController,
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
          labelText: 'Last name',
          helperText: 'Names as per ID'
      ),
    );
  }
}