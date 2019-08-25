import 'package:flutter/material.dart';
import 'VehicleSelfValuePage.dart';

enum SingingCharacter { Yes, No }



class VehicleAge extends StatefulWidget {
  @override
  _VehicleAgeState createState() => _VehicleAgeState();
}

class _VehicleAgeState extends State<VehicleAge> {

  SingingCharacter _character = SingingCharacter.No;

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
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> VehicleSelfValue()));
                      }))
            ],
          ),
        ),
      ),
    );

    final RadioListOne = RadioListTile<SingingCharacter>(
      title: const Text('No'),
      value: SingingCharacter.No,
      groupValue: _character,
      onChanged: (SingingCharacter value) {
        setState(() {
          _character = value;
        });
      },
    );

    final RadioListTwo = RadioListTile<SingingCharacter>(
      title: const Text('Yes'),
      value: SingingCharacter.Yes,
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
      home: Scaffold(
          appBar: AppBar(
            title: Text('Get your quote'),
          ),
            body: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Text('Is the vehicle older than 12 years?' , style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold,color: Colors.green),
                      textAlign: TextAlign.center,),
                  ),
                  SizedBox(height: 30,),
                  Divider(),
                  RadioListOne,
                  Divider(),
                  RadioListTwo,
                  Divider(),
                  NextButton
                ],
              ),
            ),
          ),
    );
  }

}

