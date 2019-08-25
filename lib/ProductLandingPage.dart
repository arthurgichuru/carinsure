import 'package:flutter/material.dart';

import 'CarInsurance/TypeofVehiclePage.dart';

class ProductLandingPage extends StatefulWidget {
  @override
  _ProductLandingPageState createState() => _ProductLandingPageState();
}

class _ProductLandingPageState extends State<ProductLandingPage> {
  @override
  Widget build(BuildContext context) {
//Car Insurance
    final CarInsurance = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
          onTap: () {
            _settingModalBottomCarInsurance(context);
          },
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.directions_car,
                        color: Colors.blue,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Auto Insurance',
                    style: TextStyle(color: Colors.black87, fontSize: 12.0),
                  ),
                )
              ],
            ),
          )),
    );

    //Domestic Package
    final DomesticPackage = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          _settingModalBottomSheetDomesticPackage(context);
        },
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.home,
                      color: Colors.green,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Domestic Insurance',
                  style: TextStyle(color: Colors.black87, fontSize: 12.0),
                ),
              )
            ],
          ),
        ),
      ),
    );

    final PersonalAccident = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
          onTap: () {
            _settingModalBottomPersonalAccident(context);
          },
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.local_hospital,
                        color: Colors.red,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Pesonal Accident Insurance',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black87, fontSize: 12.0),
                  ),
                )
              ],
            ),
          )),
    );

    final OpenAccount = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
          onTap: () {
            _settingModalBottomSheetCreateAccount(context);
          },
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.deepPurple,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Create Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black87, fontSize: 12.0),
                  ),
                )
              ],
            ),
          )),
    );

    final PaymentCards = GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        CarInsurance,
        DomesticPackage,
        PersonalAccident,
        OpenAccount
        //payLaterCard,
        //paymentsInfoCard
      ],
    );

    return MaterialApp(
        title: 'PersonalMokashBankPaymentsPage',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: NestedScrollView(
                headerSliverBuilder: (BuildContext, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      expandedHeight: 170.0,
                      floating: false,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                          centerTitle: true,
                          title: Text("Choose a product",
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
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PaymentCards,
                ))));
  }

  //This code is being temporarily being hosted here. it should be abstracted to its
  //own class in the SendMoneyLandingPage

  //Car Insurance
  void _settingModalBottomCarInsurance(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(
                      Icons.description,
                      color: Colors.green,
                    ),
                    title: new Text('Get a Quote'),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> GetaCarQuote()));
                    }),
                new ListTile(
                  leading: new Icon(
                    Icons.info,
                    color: Colors.orangeAccent,
                  ),
                  title: new Text(
                    'Information',
                  ),
                  onTap: () {},
                ),
              ],
            ),
          );
        });
  }

  //Domestic package
  void _settingModalBottomSheetDomesticPackage(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(
                      Icons.description,
                      color: Colors.green,
                    ),
                    title: new Text('Get a Quote'),
                    onTap: () {
                      // Navigator.of(context).push(new MaterialPageRoute(builder: (context) => PayTvBilling()));
                    }),
                new ListTile(
                  leading: new Icon(
                    Icons.info,
                    color: Colors.orangeAccent,
                  ),
                  title: new Text(
                    'Information',
                  ),
                  onTap: () {},
                ),
              ],
            ),
          );
        });
  }

  //Personal Accident
  void _settingModalBottomPersonalAccident(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                  leading: new Icon(
                    Icons.description,
                    color: Colors.orangeAccent,
                  ),
                  title: new Text(
                    'Get a Quote',
                  ),
                  //onTap: ()  { Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> PayMerchantTill()));},
                ),
                new ListTile(
                    leading: new Icon(
                      Icons.info,
                      color: Colors.green,
                    ),
                    title: new Text('Information'),
                    onTap: () {}),
              ],
            ),
          );
        });
  }

  //Setup an account
  void _settingModalBottomSheetCreateAccount(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(
                      Icons.account_circle,
                      color: Colors.green,
                    ),
                    title: new Text('Create an account'),
                    onTap: () {
                      //Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> PayTvBilling()));
                    }),
              ],
            ),
          );
        });
  }
}
