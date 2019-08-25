/*

import 'package:flutter/material.dart';
import 'package:merchants/MerchantPages/CollectMoneyPages/1_CollectMoneyLandingPage.dart';


class MerchantPOS extends StatefulWidget{
  _MerchantPOS createState()=> _MerchantPOS();
}

class _MerchantPOS extends State<MerchantPOS> {

  String outPut = '0';

  //Declare variables to use in the calculation


  String _outPut ='0';
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = '';


  //Method to Add POS details
  void buttonPressed(String buttonText) {

    if(buttonText == 'C'){
     _outPut ='0';
     num1 = 0.0;
     num2 = 0.0;
     operand = '';

    } else if(buttonText == '+'){


      num1 = double.parse(outPut);

      operand = buttonText;

      _outPut ='0';
    }
    else if(buttonText == 'TOTAL'){

      num2 = double.parse(outPut);


      if(operand == '+'){

        _outPut = (num1+num2).toString();
      }
      num1 =0;
      num2=0;
      operand = '';
    }else{

      _outPut =_outPut + buttonText;
    }
    print(_outPut);

    setState(() {
      outPut = double.parse(_outPut).toStringAsFixed(2);
    });

  }



    @override
    Widget build(BuildContext context) {
      //Create button widget

      Widget chargeButton(String chargeText) {
        return Expanded(
          child: MaterialButton(
              elevation: 10,
              padding: EdgeInsets.all(14),
              child: Text(chargeText, style: TextStyle(fontSize: 24),),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
               // Navigator.of(context).push(new MaterialPageRoute(builder: (context) => CollectMoneyPage())
                );

              }),
        );
      };


      Widget buildButton(String buttonText) {
        return Expanded(
            child: OutlineButton(
              padding: EdgeInsets.all(14),
              child: Text(buttonText, style: TextStyle(fontSize: 30.0, color: Colors.blue),),
              onPressed: () {
                buttonPressed(buttonText);
              },
              color: Colors.blue,
              textColor: Colors.black,
            )
        );
      }

      final OutPut = Container(
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
          alignment: Alignment.centerRight,
          child: Text(outPut, style: TextStyle(fontSize: 36.0, color: Colors.blue),)
      );

      final POStable = Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              chargeButton('Collect Payment')
            ],
          ),
          //Divider(),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              buildButton('1'),
              buildButton('2'),
              buildButton('3'),
            ],
          ),
          Row(
            children: <Widget>[
              buildButton('4'),
              buildButton('5'),
              buildButton('6'),
            ],
          ),
          Row(
            children: <Widget>[
              buildButton('7'),
              buildButton('8'),
              buildButton('9'),
            ],
          ),
          Row(
            children: <Widget>[
              buildButton('C'),
              buildButton('0'),
              buildButton('+'),
            ],
          ),
          Row(
            children: <Widget>[
              buildButton('TOTAL'),
            ],
          ),
        ],
      );

      return ListView(
        children: <Widget>[
          ClipRect(child: OutPut),
          SizedBox(height: 30,),
              ClipRect(
                  child: POStable
              ),
            ],
      );
    }
  }

*/