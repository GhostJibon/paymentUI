import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PO_Bkash extends StatelessWidget {
  const PO_Bkash({
    required this.isVisibleBcash,
  });

  final bool isVisibleBcash;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisibleBcash,
      child: Container(
          height: 10.h,
          width: 90.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Container(
              width: 80.w,
              child: TextFormField(
                style: TextStyle(fontSize: 22.sp),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusColor: Colors.greenAccent,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff384CFF),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.greenAccent),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
