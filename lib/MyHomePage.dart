import 'package:flutter/material.dart';
import 'package:carinsure/ProductLandingPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Create Button
    final getQuoteButton = Container(
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
                      child: const Text('GET A QUOTE'),
                      elevation: 4.0,
                      splashColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => ProductLandingPage()));
                      }))
            ],
          ),
        ),
      ),
    );

    final PageViewZero = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        Column(
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              child: Image.asset('images/loop.jpg'),
            ),
            SizedBox(height: 10,),
            Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Take the pain out of getting insurance for the things you care about.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          //child: getQuoteButton
        )
      ],
    );

    final PageViewOne = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        Column(
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              child: Image.asset('images/car.png'),
            ),
            SizedBox(height: 10,),
            Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Change the way you get your moti covered, We have prepapred a fully digital experience with fast delivery of insurance stickers and also flexible monthly payments.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          //child: getQuoteButton
        )
      ],
    );

    final PageViewTwo = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Container(
          height: 150,
          width: 150,
          child: Image.asset('images/domestic.png'),
        ),
        SizedBox(height: 10,),
        Column(
          children: <Widget>[
            Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Get you stuff in the house covered and protected from loss and damage. We will cover you in a few seconds. We also have flexible monthly instalments.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        //Container(child: getQuoteButton)
      ],
    );


    final PageViewThree = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Container(
          height: 150,
          width: 150,
          child: Image.asset('images/personalaccident.png'),
        ),
        SizedBox(height: 10,),
        Column(
          children: <Widget>[
            Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Do you have an active life? protect your self from that unforeseen accident that may take you out of your game.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 30,
        ),
        Container(child: getQuoteButton)
      ],
    );


    final pageViews = PageView(
      children: <Widget>[
        Container(
          color: Colors.blue,
          child: PageViewZero,
        ),
        Container(
          color: Colors.blue,
          child: PageViewOne,
        ),
        Container(
          color: Colors.blue,
          child: PageViewTwo,
        ),
        Container(
          color: Colors.blue,
          child: PageViewThree,
        ),
      ],
      scrollDirection: Axis.vertical,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landing',
      home: Scaffold(
          body:
              pageViews
      ),
    );
  }
}
