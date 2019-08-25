import 'package:flutter/material.dart';

import 'CustomerProfileOTPPage.dart';

class CustomerContacts extends StatefulWidget {
  @override
  _CustomerContactsState createState() => _CustomerContactsState();
}

class _CustomerContactsState extends State<CustomerContacts> {
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
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> CustomerProfileOTP()));
                      }))
            ],
          ),
        ),
      ),
    );



    final CustomerPhone= TextField(
      //controller: firstNameController,
      keyboardType: TextInputType.phone,
      maxLength: 10,
      textInputAction: TextInputAction.done,
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
          labelText: 'Phone',
          helperText: 'M-PESA phone number'
      ),
    );


    final Email = TextField(
      //controller: firstNameController,
      keyboardType: TextInputType.text,
      maxLength: 30,
      textInputAction: TextInputAction.done,
      //Decoration
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          prefixIcon: Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.email,
                color: Colors.blue,
              )),
          labelText: 'e-mail',
          helperText: 'Key in valid email to recieve policy'
      ),
    );


    final IDNumber = TextField(
      //controller: firstNameController,
      keyboardType: TextInputType.number,
      maxLength: 30,
      textInputAction: TextInputAction.done,
      //Decoration
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          prefixIcon: Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.credit_card,
                color: Colors.blue,
              )),
          labelText: 'ID number',
          helperText: 'Key in your ID number'
      ),
    );

    final CustomerProfile = Padding(padding: EdgeInsets.all(15),
      child:Column(
        children: <Widget>[
          CustomerPhone,
          SizedBox(height: 20,),
          Email,
          SizedBox(height: 20,),
        ],
      ),
    );


    final PageDescription =Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Provide your contact details.', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize:18 , color: Colors.green),),
    );

    final PageDescriptionTwo =Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('We will use these contacts to \n  get in touch with you.', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize:14 , color: Colors.blue),),
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
}
