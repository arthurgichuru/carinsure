import 'package:flutter/material.dart';

import 'QuotationSummaryPage.dart';
import 'VehicleAgePage.dart';

class QuoteDisplay extends StatefulWidget {
  @override
  _QuoteDisplayState createState() => _QuoteDisplayState();
}

class _QuoteDisplayState extends State<QuoteDisplay> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  bool _value6 = false;

  void _onChanged1(bool value) => setState(() => _value1 = value);

  void _onChanged2(bool value) => setState(() => _value1 = value);

  void _onChanged3(bool value) => setState(() => _value1 = value);

  void _onChanged4(bool value) => setState(() => _value1 = value);

  void _onChanged5(bool value) => setState(() => _value1 = value);

  @override
  Widget build(BuildContext context) {

    final LossofUse = SwitchListTile(
        value: _value1,
        onChanged: _onChanged1,
        title: new Text('Loss of Use',
            style:
                new TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
        subtitle: Text('KES 4,000'));

    final WindScreen = SwitchListTile(
        value: _value2,
        onChanged: _onChanged2,
        title: new Text('Wind Screen',
            style:
                new TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
        subtitle: Text('KES 1,000'));

    final VehicleEntertainment = SwitchListTile(
        value: _value3,
        onChanged: _onChanged3,
        title: new Text('Entertainment System',
            style:
                new TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
        subtitle: Text('KES 2,000'));

    final Terror = SwitchListTile(
        value: _value4,
        onChanged: _onChanged4,
        title: new Text('Terrorism Cover',
            style:
                new TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
        subtitle: Text('KES 2,500'));

    final RoadRescue = SwitchListTile(
        value: _value5,
        onChanged: _onChanged5,
        title: new Text('Road Rescue',
            style:
                new TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
        subtitle: Text('KES 3,000'));

    final PremiumsQuote = Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              'Basic Premium',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            child: Text(
              'KES 50,000',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Divider(),
        ],
      ),
    );




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
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => QuotationSummaryPage()));
                      }))
            ],
          ),
        ),
      ),
    );

    final QuoteDetails = Padding(padding: EdgeInsets.all(20),
      child:ExpansionTile(
      title: Text('Included in your cover', style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.grey) ,),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Wind screen damage \n and Authorised Repair',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'KES 50,000',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '3rd party property damage \n passenger legal liability',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'KES 5,000,000',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
              ),
    );


    final AdditionalQuotes = Padding(
        padding: const EdgeInsets.all(20.0),
        child: ExpansionTile(title: Text('Additional Options', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.grey),),
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 10,),
                  Divider(),
                  LossofUse,
                  Divider(),
                  WindScreen,
                  Divider(),
                  VehicleEntertainment,
                  Divider(),
                  Terror,
                  Divider(),
                  RoadRescue,
                ],
              )
            ]
        )
    );



    final BasicPremiumCard = Padding(padding: EdgeInsets.all(5),
        child: Card(
          elevation: 10,
          child: Column(
            children: <Widget>[
              PremiumsQuote,
              QuoteDetails
            ],
          ),
        )
    );

    final AdditionalQuotesCard = Padding(padding: EdgeInsets.all(5),
        child: Card(
          elevation: 10,
          child: Column(
            children: <Widget>[
              AdditionalQuotes
            ],
          ),
        )
    );




    return MaterialApp(
      title: 'QuoteDisplay',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Customise your quote'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: ListView(
            children: <Widget>[
              BasicPremiumCard,
              AdditionalQuotesCard,
              SizedBox(height: 10,),
              NextButton,
            ],
          ),
        ),
      ),
      );
  }
}
