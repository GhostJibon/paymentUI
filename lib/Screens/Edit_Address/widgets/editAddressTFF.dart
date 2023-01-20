import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EditAddressTFF extends StatelessWidget {
  EditAddressTFF(
      {required this.hintTexts,
      required this.tFFheight,
      required this.tFFwidth});
  String hintTexts;
  double tFFheight;
  double tFFwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: tFFwidth,
      height: tFFheight,
      child: TextFormField(
        style: TextStyle(fontSize: 12.sp),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: hintTexts,
          fillColor: Colors.grey[300],
          focusColor: Colors.black,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff384CFF),
            ),
          ),
        ),
      ),
    );
  }
}
