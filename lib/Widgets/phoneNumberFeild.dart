import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class PhoneNumberFeild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  TextField(
            maxLength: 10,
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.done,

            //Decorate the feild
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                //Prefix Icons

                prefixIcon: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.phone,
                      color: Colors.green,
                    )),

                //Label Text
                //hintText: 'Key in your Phone',
                helperText: 'Key in your phone',
                labelText: 'Phone'),
          );
  }
}
