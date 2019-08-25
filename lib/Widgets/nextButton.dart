import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class PhoneNextButton extends StatelessWidget{

  PhoneNextButton({@required this.onpressed, this.buttonText});

  final GestureTapCallback onpressed;
  String buttonText;


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(width:250.0, height: 40.0,
               child: RaisedButton(
                  child: Text(buttonText, style: TextStyle(color: Colors.white),),
                  elevation: 4.0,
                  color: Color(0xFF2196F3),
                  splashColor: Colors.white,
                  shape: const StadiumBorder(),
                  onPressed:onpressed,
                  ),

              )
            ],
          ),
        ),
      ),
    );
  }
}