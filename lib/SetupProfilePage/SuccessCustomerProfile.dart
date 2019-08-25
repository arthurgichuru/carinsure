import 'package:flutter/material.dart';

import 'CustomerProfileOTPPage.dart';

class SuccessCustomerProfile extends StatefulWidget {
  @override
  _SuccessCustomerProfileState createState() => _SuccessCustomerProfileState();
}

class _SuccessCustomerProfileState extends State<SuccessCustomerProfile> {

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
                        //Navigator.pushNamed(context, 'TypeOfCover');
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => CustomerProfileOTP()));
                      }))
            ],
          ),
        ),
      ),
    );




    return MaterialApp(
      title: 'CustomerProfile',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 100.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("Customer Profile",
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


              SizedBox(height: 10,),

              SetUpButton
            ],
          ),
        ),
      ),
    );
  }
}
