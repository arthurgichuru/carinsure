/*

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:merchants/MerchantPages/MainProductsPages/0_SoleProprietorBottonNavigationPage.dart';

class ChartsReport extends StatefulWidget {
  @override
  _ChartsReport createState() => _ChartsReport();
}

class _ChartsReport extends State<ChartsReport> {

  //Define a series of Types Sales; put the data in the series
  List<charts.Series<Sales,String>> _seriesPieData;

  //Generate the Data
  _generateData() {

    var pieData=[

      new Sales('Bread', 50.0, Color(0xff3366cc)),
      new Sales('Milk', 100.0, Color(0xff990099)),
      new Sales('Sugar',70.0, Color(0xff109618)),
      new Sales('Salt', 10.0, Color(0xfffdbe19)),
      new Sales('Oil', 40.0, Color(0xffff9900)),
      new Sales('Rice',150.0, Color(0xffdc3912)),
    ];

    _seriesPieData.add(
      charts.Series(
        data: pieData,
        domainFn: (Sales sales,_)=>sales.sales,
        measureFn: (Sales sales,_)=>sales.salesValue,
        colorFn: (Sales sales,_)=>charts.ColorUtil.fromDartColor(sales.colorVal),
        id: 'Daily Sales',
        labelAccessorFn: (Sales row,_)=>'${row.salesValue}',
      ),
    );
  }

  @override
  void initState(){
    super.initState();
    _seriesPieData = List<charts.Series<Sales,String>>();
    _generateData();
  }

  Widget SalesChart(){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: charts.PieChart(
        _seriesPieData,
        animate: true,
        animationDuration: Duration(seconds: 5),
        behaviors: [
          charts.DatumLegend(
            outsideJustification: charts.OutsideJustification.endDrawArea,
            horizontalFirst: false,
            desiredMaxRows: 2,
            cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
            entryTextStyle: charts.TextStyleSpec(
                color: charts.MaterialPalette.purple.shadeDefault,
                fontFamily: 'Georgia',
                fontSize: 11),
          ),
        ],
        defaultRenderer: charts.ArcRendererConfig(
            arcWidth: 100,
            arcRendererDecorators: [
              new charts.ArcLabelDecorator(
                  labelPosition: charts.ArcLabelPosition.inside),
            ]
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charts',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
           appBar: AppBar(
             title: Text('Sales Report'),
             leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white,
                 onPressed: (){

                   Navigator.pop(context,false);
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context)=> SoleProprietorBottomNavPage() ));

                 }
             ),
             actions: <Widget>[
               IconButton(
                 icon: Icon(Icons.cancel,),
                 onPressed: (){
                   //Navigator.pop(context,false);
                   Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> SoleProprietorBottomNavPage()));
                 },
               )
             ],
           ),
          body: Center(
            child: SalesChart(),
          )
      ),
    );

  }
}

//Deifne the data container

class Sales{
  String sales;
  double salesValue;
  Color colorVal;

  Sales(this.sales,this.salesValue,this.colorVal);
}

*/