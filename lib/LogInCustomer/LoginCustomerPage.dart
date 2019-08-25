import 'package:flutter/material.dart';

class LoginCustomer extends StatefulWidget {
  @override
  _LoginCustomerState createState() => _LoginCustomerState();
}

class _LoginCustomerState extends State<LoginCustomer> {

  @override
  Widget build(BuildContext context) {
    // SetupProfile
    final SetUpButton = Container(
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
                  child: const Text('LOG IN'),
                  elevation: 4.0,
                  splashColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    //Navigator.of(context).push(new MaterialPageRoute(
                    // builder: (context) => CustomerProfileOTP()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );


    final PhoneNumber = TextField(
      //controller: firstNameController,
      keyboardType: TextInputType.phone,
      maxLength: 10,
      textInputAction: TextInputAction.done,
      //obscureText: true,
      //Decoration
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          prefixIcon: Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.phone,
                color: Colors.blue,
              )),
          labelText: 'Key Phone',
          helperText: 'Key in phone number you registered'
      ),
    );

    final Password = TextField(
      //controller: firstNameController,
      keyboardType: TextInputType.number,
      maxLength: 10,
      textInputAction: TextInputAction.done,
      obscureText: true,
      //Decoration
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          prefixIcon: Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.fiber_pin,
                color: Colors.blue,
              )),
          labelText: 'Key in pin',
          helperText: 'Always keep your pin secret'
      ),
    );


    final CustomerProfile = Padding(padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          PhoneNumber,
          SizedBox(height: 10,),
          Password,
          SizedBox(height: 10,),
        ],
      ),
    );


    final PageDescription = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Welcome. \n Please log into your account.',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
    );

    final LogInCard = Padding(padding: EdgeInsets.all(10), child:Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10,
      //color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          CustomerProfile,
          SetUpButton,
          SizedBox(height: 20,)
        ],
      ),
    ),
    );

    return MaterialApp(
      title: 'CustomerProfile',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
          body: ListView(
            children: <Widget>[
              SizedBox(height: 150,),
              PageDescription,
              SizedBox(height: 20,),
              LogInCard,
            ],
          ),
        ),
    );
  }
}
