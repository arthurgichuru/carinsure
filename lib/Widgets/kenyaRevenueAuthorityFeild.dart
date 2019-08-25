import 'package:flutter/material.dart';

class KenyaRevenueAuthorityFeild extends StatefulWidget{
  _KenyaRevenueAuthorityFeild createState()=> _KenyaRevenueAuthorityFeild();
}

class _KenyaRevenueAuthorityFeild extends State<KenyaRevenueAuthorityFeild>{

  final KenyaRevenueAuthorityController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: KenyaRevenueAuthorityController,
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
                Icons.business,
                color: Colors.green,
              )),
          labelText: 'Kenya Revenue Authority Number',
          helperText: 'KRA number'
      ),

    );
  }
}