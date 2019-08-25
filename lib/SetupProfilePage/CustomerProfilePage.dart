import 'package:flutter/material.dart';

import 'CustomerContactsPage.dart';


class CustomerProfilePage extends StatefulWidget {
  @override
  _CustomerProfilePageState createState() => _CustomerProfilePageState();
}

class _CustomerProfilePageState extends State<CustomerProfilePage> {
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
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> CustomerContacts()));
                      }))
            ],
          ),
        ),
      ),
    );



    final FirstName = TextField(
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
                Icons.account_circle,
                color: Colors.blue,
              )),
          labelText: 'First name',
          //helperText: 'Key in first name as per ID'
      ),
    );


    final LastName = TextField(
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
                Icons.account_circle,
                color: Colors.blue,
              )),
          labelText: 'Last name',
          //helperText: 'Key in Last name as per ID'
      ),
    );


    final IDNumber = TextField(
      //controller: firstNameController,
      keyboardType: TextInputType.number,
      maxLength: 15,
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
          //helperText: 'Key in your ID number'
      ),
    );

    final VehiclePlates = TextField(
      //controller: firstNameController,
      keyboardType: TextInputType.text,
      maxLength: 5,
      textInputAction: TextInputAction.done,
      //Decoration
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          prefixIcon: Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.directions_car,
                color: Colors.blue,
              )),
          labelText: 'Vehicle registration number',
          //helperText: 'Key in your Vehicle Reg number'
      ),
    );

    final CustomerProfile = Padding(padding: EdgeInsets.all(15),
      child:Column(
      children: <Widget>[
        FirstName,
        SizedBox(height: 5,),
        LastName,
        SizedBox(height: 5,),
        IDNumber,
        SizedBox(height: 5,),
        VehiclePlates
      ],
      ),
    );


    final PageDescription =Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Provide your names \n and I.D details.', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize:18 , color: Colors.green),),
    );

    final PageDescriptionTwo =Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('These details are required for \n us to be able to process your cover legally.', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize:14 , color: Colors.blue),),
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
            SizedBox(height: 5,),
            PageDescription,
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
