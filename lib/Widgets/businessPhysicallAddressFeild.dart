import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class RegisteredBusinessPhysicalAddress extends StatefulWidget{


  _RegisteredBusinessPhysicalAddress createState()=> _RegisteredBusinessPhysicalAddress();
}

class _RegisteredBusinessPhysicalAddress extends State<RegisteredBusinessPhysicalAddress>{

  final businessPhysicalAddressController = TextEditingController();

  //String customerNames;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: businessPhysicalAddressController,
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
                Icons.location_on,
                color: Colors.green,
              )),
          labelText: 'Business Physical Address',
          helperText: 'Where is your office located?'
      ),
    );
  }
}