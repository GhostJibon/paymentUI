import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardColors extends StatelessWidget {
  const CardColors({required this.cardcolor});
  final Color cardcolor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 11.sp,
      backgroundColor: cardcolor,
    );
  }
}
