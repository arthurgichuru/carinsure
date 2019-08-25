import 'package:flutter/material.dart';
import 'VehicleAgePage.dart';

enum SingingCharacter { Comprehensive, ThirdParty }

class TypeOfCover extends StatefulWidget {
  @override
  _TypeOfCoverState createState() => _TypeOfCoverState();
}

class _TypeOfCoverState extends State<TypeOfCover> {

 SingingCharacter _character = SingingCharacter.Comprehensive;

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
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> VehicleAge()));
                      }))
            ],
          ),
        ),
      ),
    );

    final descriptionTypeofCover =   Container(
      child: Text('What cover type would you like \n for this vehicle?' , style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
        textAlign: TextAlign.center,),
    );

    final RadioComprehensive = RadioListTile<SingingCharacter>(
      title: const Text('Comprehensive'),
      value: SingingCharacter.Comprehensive,
      groupValue: _character,
      onChanged: (SingingCharacter value) {
        setState(() {
          _character = value;
        });
      },
    );

    final RadioThirdParty =  RadioListTile<SingingCharacter>(
      title: const Text('Third Party'),
      value: SingingCharacter.ThirdParty,
      groupValue: _character,
      onChanged: (SingingCharacter value) {
        setState(() {
          _character = value;
        });
      },
    );




    return MaterialApp(
      title: 'CarQuote',
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: Text('Cover Type'),
      ),
        body: Container(
          child: ListView(
                    children: <Widget>[
                       SizedBox(height: 30),
                       descriptionTypeofCover,
                       SizedBox(height: 30),
                       Divider(),
                       RadioComprehensive,
                       Divider(),
                       RadioThirdParty,
                       Divider(),
                       SizedBox(height: 30),
                       NextButton
                    ],
                  ),
        ),
      ),

    );
  }
}
