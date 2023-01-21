import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardDetailsTFF extends StatelessWidget {
  CardDetailsTFF(
      {required this.hintTexts,
      required this.tFFheight,
      required this.tFFwidth,
      required this.keyboardType});
  final String hintTexts;
  final double tFFheight;
  final double tFFwidth;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0.5.h, bottom: 0.5.h),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
        width: tFFwidth,
        height: tFFheight,
        child: TextFormField(
          style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500),
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintTexts,
            hintStyle: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500),
            fillColor: Colors.grey[300],
            focusColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
