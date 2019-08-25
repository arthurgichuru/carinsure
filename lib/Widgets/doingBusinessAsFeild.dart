import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class CustomerDoingBusinessAs extends StatefulWidget{


  _CustomerDoingBusinessAs createState()=> _CustomerDoingBusinessAs();
}

class _CustomerDoingBusinessAs extends State<CustomerDoingBusinessAs>{

  final customerDoingBusinessAsController = TextEditingController();

  //String customerNames;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: customerDoingBusinessAsController,
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
                Icons.business_center,
                color: Colors.green,
              )),
          labelText: 'Doing business as?',
          helperText: 'Business name'
      ),
    );
  }
}