import 'package:flutter/material.dart';

import 'QuoteDisplayPage.dart';




class VehicleSelfValue extends StatefulWidget {
  @override
  _VehicleSelfValueState createState() => _VehicleSelfValueState();
}

class _VehicleSelfValueState extends State<VehicleSelfValue> {
 

  @override
  Widget build(BuildContext context) {
    // NextButton
    final NextButton = Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  width: 250.0,
                  height: 40.0,
                  child: new RaisedButton(
                      child: const Text('NEXT'),
                      elevation: 4.0,
                      splashColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        //Navigator.pushNamed(context, 'TypeOfCover');
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> QuoteDisplay()));
                      }))
            ],
          ),
        ),
      ),
    );
    return MaterialApp(

      title: 'SelfQuote',
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: Text('Self Valuation'),
      ),
            body: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Text('What is the value of your vehicle?' , style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold,color: Colors.green,),
                      textAlign: TextAlign.center,),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)
                          ),
                            labelText: 'Self Declared Value',
                            helperText: 'KES amount',
                          //hintText: 'Self Declared Value'
                        )

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  NextButton
                ],
              ),
            ),
          )
    );
  }
}
