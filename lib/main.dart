import 'package:flutter/material.dart';
import 'package:carinsure/MyHomePage.dart';
import 'CarInsurance/TypeofVehiclePage.dart';
import 'CarInsurance/QuotationSummaryPage.dart';
import 'CarInsurance/QuoteDisplayPage.dart';
import 'CarInsurance/TyperOfCoverPage.dart';
import 'CarInsurance/VehicleAgePage.dart';
import 'CarInsurance/VehicleSelfValuePage.dart';
import 'LogInCustomer/LoginCustomerPage.dart';
import 'ProductLandingPage.dart';
import 'SetupProfilePage/CustomerContactsPage.dart';
import 'SetupProfilePage/CustomerPasswordSetupPage.dart';
import 'SetupProfilePage/CustomerProfileOTPPage.dart';
import 'SetupProfilePage/CustomerProfilePage.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/":(context)=>MyHomePage(),
        "/ProductLandingPage":(context)=>ProductLandingPage(),
        "/CarQuote":(context)=> GetaCarQuote(),
        "/TypeOfCover":(context)=>TypeOfCover(),
        "/VehicleAge":(context)=> VehicleAge(),
        "/VehicleSelfValue":(context)=>VehicleSelfValue(),
        "/QuoteDisplay":(context)=>QuoteDisplay(),
        "/QuotationSummaryPage":(context)=>QuotationSummaryPage(),
        "/CustomerProfilePage":(context)=>CustomerProfilePage(),
        "/CustomerContacts":(context)=> CustomerContacts(),
        "/CustomerProfileOTP":(context)=> CustomerProfileOTP(),
        "/CustomerPassWordSetUp":(context)=> CustomerPassWordSetUp(),
        "/LoginCustomer":(context)=>LoginCustomer()
      },
    );
  }
}

