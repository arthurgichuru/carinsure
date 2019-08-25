import 'package:flutter/material.dart';

class BusinessPermitNumberFeild extends StatefulWidget{
  _BusinessPermitNumberFeild createState()=> _BusinessPermitNumberFeild();
}

class _BusinessPermitNumberFeild extends State<BusinessPermitNumberFeild>{

  final businessPermitNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: businessPermitNumberController,
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
                Icons.graphic_eq,
                color: Colors.green,
              )),
          labelText: 'Business permit number',
          helperText: 'Permit number as per county license'
      ),

    );
  }
}