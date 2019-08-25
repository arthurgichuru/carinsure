import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class DescriptionTextWidget extends StatelessWidget{

  String descriptor;

  DescriptionTextWidget({@required this.descriptor});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 250, height: 50,
        child: Text(descriptor,
        textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black),
        )
        )
      ],
    );
  }
}