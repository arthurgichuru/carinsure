import 'package:flutter/material.dart';

class IdNumberFeild extends StatefulWidget{
  _IdNumberFeild createState()=> _IdNumberFeild();
}

class _IdNumberFeild extends State<IdNumberFeild>{

  final customerIdNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: customerIdNumberController,
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
                Icons.perm_identity,
                color: Colors.green,
              )),
        labelText: 'ID Number',
        helperText: 'ID number as per ID document'
      ),

    );
  }
}