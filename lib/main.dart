import 'package:amar_shohor/Screens/Add_Address/add_address.dart';
import 'package:amar_shohor/Screens/Payment/payment_options.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        home: AddAddress(),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
