import 'package:amar_shohor/Screens/Edit_Address/widgets/editAddressTFF.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class EditAddress extends StatefulWidget {
  const EditAddress({super.key});

  @override
  State<EditAddress> createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'My Address',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 15.sp),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xff196E55),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 5.w, right: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shipping address',
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
              child: Text(
                'You have not set up this type of address yet',
                style: TextStyle(
                    fontSize: 8.sp,
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              children: [
                EditAddressTFF(
                  hintTexts: 'Username',
                  tFFheight: 5.h,
                  tFFwidth: 40.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
