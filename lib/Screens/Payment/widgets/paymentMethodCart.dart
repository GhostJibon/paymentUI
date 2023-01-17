import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PaymentMethodCart extends StatelessWidget {
  PaymentMethodCart({required this.paymentName, required this.imagelink});
  final String paymentName;
  final String imagelink;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
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
              spreadRadius: 1,
              blurRadius: 9,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                paymentName,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.sp),
              ),
              Container(
                height: 4.h,
                child: Image.asset(imagelink),
              )
            ],
          ),
        ),
      ),
    );
  }
}
