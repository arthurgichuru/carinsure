import 'package:carinsure/LogInCustomer/LoginCustomerPage.dart';
import 'package:flutter/material.dart';
import 'CustomerProfileOTPPage.dart';

class CustomerPassWordSetUp extends StatefulWidget {
  @override
  _CustomerPassWordSetUpState createState() => _CustomerPassWordSetUpState();
}

class _CustomerPassWordSetUpState extends State<CustomerPassWordSetUp> {


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
                      child: const Text('CREATE'),
                      elevation: 4.0,
                      splashColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        _showDialog();
                        //Navigator.pushNamed(context, 'TypeOfCover');
                        //Navigator.of(context).push(new MaterialPageRoute(
                           // builder: (context) => CustomerProfileOTP()));
                      }))
            ],
          ),
        ),
      ),
    );


    final FirstPassword = TextField(
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
          helperText: 'Key in a Pin to secure your account'
      ),
    );

    final SecondPassword = TextField(
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
          labelText: 'Repeat pin',
          helperText: 'Repeat pin'
      ),
    );


    final CustomerProfile = Padding(padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          FirstPassword,
          SizedBox(height: 20,),
          SecondPassword,
          SizedBox(height: 20,),
        ],
      ),
    );


    final PageDescription = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Key in a pin to secure your account.',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.green),),
    );

    final PageDescriptionTwo = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('You will use this pin to access your account. \n keep it safe and secure.',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blue),),
    );

    return MaterialApp(
      title: 'CustomerProfile',
      debugShowCheckedModeBanner: false,
      home: Scaffold(body:NestedScrollView(
        headerSliverBuilder: (BuildContext, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverAppBar(
          expandedHeight: 100.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Password Set Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  )),
              background: Image.asset('images/sliver.png',
                fit: BoxFit.cover,
              )),
        ),
      ];
    },
        body: ListView(
          children: <Widget>[
            SizedBox(height: 30,),
            PageDescription,
            PageDescriptionTwo,
            SizedBox(height: 10,),
            CustomerProfile,
            SetUpButton
          ],
        ),
      ),
      ),
    );
  }

  void _showDialog() {
    showDialog(context: context,
        builder: (BuildContext context){
      return AlertDialog(
        title: Text('Success!'),
        content: Text('Your account has been created successfully'),
        elevation: 20,
        actions: <Widget>[
          FlatButton(onPressed: (){
            Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> LoginCustomer()));
          }, child: Text('OK')),

        ],
      );
    }
    );
}

}

