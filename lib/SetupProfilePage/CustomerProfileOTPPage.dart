import 'package:flutter/material.dart';

import 'CustomerPasswordSetupPage.dart';

class CustomerProfileOTP extends StatefulWidget {
  @override
  _CustomerProfileOTPState createState() => _CustomerProfileOTPState();
}

class _CustomerProfileOTPState extends State<CustomerProfileOTP> {
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
                      child: const Text('NEXT'),
                      elevation: 4.0,
                      splashColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        //Navigator.pushNamed(context, 'TypeOfCover');
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> CustomerPassWordSetUp()));
                      }))
            ],
          ),
        ),
      ),
    );



    final CustomerOPT= TextField(
      //controller: firstNameController,
      keyboardType: TextInputType.phone,
      maxLength: 4,
      textInputAction: TextInputAction.done,
      //Decoration
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          prefixIcon: Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.settings_input_component,
                color: Colors.blue,
              )),
          labelText: 'Enter One Time Pin',
          helperText: 'We have sent the OPT via SMS and email'
      ),
    );



    final CustomerProfile = Padding(padding: EdgeInsets.all(15),
      child:Column(
        children: <Widget>[
          CustomerOPT,
          SizedBox(height: 20,),
        ],
      ),
    );


    final PageDescription =Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Key in One Time Pin to verify your contacts.', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize:18 , color: Colors.green),),
    );

    final PageDescriptionTwo =Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Did not recieve pin? RE- SEND', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize:14 , color: Colors.blue),),
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
            PageDescription,
            SizedBox(height: 30,),
            CustomerProfile,
            PageDescriptionTwo,
            SizedBox(height: 40,),
            SetUpButton
          ],
        ),
      ),
      ),
    );
  }
}
