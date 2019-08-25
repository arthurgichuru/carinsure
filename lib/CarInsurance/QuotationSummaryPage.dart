import 'package:carinsure/LogInCustomer/LoginCustomerPage.dart';
import 'package:carinsure/SetupProfilePage/CustomerProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:carinsure/ProductLandingPage.dart';

class QuotationSummaryPage extends StatefulWidget {
  @override
  _QuotationSummaryPageState createState() => _QuotationSummaryPageState();
}

class _QuotationSummaryPageState extends State<QuotationSummaryPage> {

  @override
  Widget build(BuildContext context) {



    final QuotationSummaryContainer = Padding(padding: EdgeInsets.all(10),
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
            children: <Widget>[
              Container(
                height: 10,
              )
            ],
           ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text('Basic Premium:', style: TextStyle(fontSize: 16,color: Colors.blue, fontWeight: FontWeight.bold) , textAlign: TextAlign.start,),
                ),
                SizedBox(width: 20,),
                Container(
                  child: Text('KES 50,000'),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text('Wind Screen:',style: TextStyle(fontSize: 16,color: Colors.blue, fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
                ),
                SizedBox(width: 20,),
                Container(
                  child: Text('KES 1,000'),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text('Road Rescue:', style: TextStyle(fontSize: 16,color: Colors.blue, fontWeight: FontWeight.bold)),
                ),
                SizedBox(width: 20,),
                Container(
                  child: Text('KES 3,000'),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text('Total Premiums:', style: TextStyle(fontSize: 16,color: Colors.blue, fontWeight: FontWeight.bold)),
                ),
                SizedBox(width: 20,),
                Container(
                  child: Text('KES 54,000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
              ],
            ),
          ],
        ),
      ),
    );


    final QuatationsummaryCard = Padding(padding: EdgeInsets.all(5),
        child:Card(
      elevation: 10,
      child: Column(
        children: <Widget>[
          QuotationSummaryContainer
        ],
      ),
        ),
    );



    // Log in Button
    final LoginButton = Container(
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
                      child: const Text('LOG IN TO PAY'),
                      elevation: 4.0,
                      splashColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                       Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> LoginCustomer()));
                      }))
            ],
          ),
        ),
      ),
    );




    //
    final CreateAccount = Container(
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
                      child: const Text('CREATE ACCOUNT'),
                      elevation: 4.0,
                      splashColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        //Navigator.pushNamed(context, 'TypeOfCover');
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => CustomerProfilePage()));
                      }))
            ],
          ),
        ),
      ),
    );

    var _radioValue1 = 1;

    final AcceptTerms = Padding(padding: EdgeInsets.all(10),
        child:Row(
      children: <Widget>[
        Radio(
          value: 1,
          groupValue: _radioValue1,
          onChanged: (int i) => setState(() => _radioValue1 = i),
        ),
        Text('Accept Terms and Conditions')
      ],
        ),
    );





    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QuotationSummary',
        home: Scaffold(
        appBar: AppBar(
          title: Text('Quotation Summary'),
        ),
    body: ListView(
              children: <Widget>[
                QuatationsummaryCard,
                SizedBox(height: 10,),
                LoginButton,
                SizedBox(height: 10,),
                Text('Dont have an account?', textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                CreateAccount
              ],
            )
        )
        );
  }
}
