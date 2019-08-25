import 'package:flutter/material.dart';

import 'TyperOfCoverPage.dart';

enum SingingCharacter { PrivateUse, CommercialUse, Bus, Motorcycle, Tractors }

class GetaCarQuote extends StatefulWidget {
  @override
  _GetaCarQuoteState createState() => _GetaCarQuoteState();
}

class _GetaCarQuoteState extends State<GetaCarQuote> {
  SingingCharacter _character = SingingCharacter.PrivateUse;

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
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> TypeOfCover()));
                      }))
            ],
          ),
        ),
      ),
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
                    child: Text('What will you use the vehicle for?' , textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green)
                    ),
                 ),
                  SizedBox(height: 30,),
                  RadioListTile<SingingCharacter>(
                    title: const Text('Private Use'),
                    value: SingingCharacter.PrivateUse,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });

                    },
                  ),
                  Divider(),
                  RadioListTile<SingingCharacter>(
                    title: const Text('Commercial Use'),
                    value: SingingCharacter.CommercialUse,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  Divider(),
                  RadioListTile<SingingCharacter>(
                    title: const Text('School/Company bus/ Van'),
                    value: SingingCharacter.Bus,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  Divider(),
                  RadioListTile<SingingCharacter>(
                    title: const Text('Personal Motor Cycle'),
                    value: SingingCharacter.Motorcycle,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  Divider(),
                  //SizedBox(height: 5,),
                  NextButton
                ],
              ),
            ),
          )
    );
  }
}
