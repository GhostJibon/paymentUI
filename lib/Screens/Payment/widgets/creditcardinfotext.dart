import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CreditCardInfoText extends StatelessWidget {
  const CreditCardInfoText({required this.cardinfo});
  final String cardinfo;
  @override
  Widget build(BuildContext context) {
    return Text(
      cardinfo,
      style: TextStyle(
          fontSize: 10.sp, fontWeight: FontWeight.w400, color: Colors.white),
    );
  }
}
