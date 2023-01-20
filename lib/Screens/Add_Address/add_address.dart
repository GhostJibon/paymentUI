import 'package:amar_shohor/Screens/Add_Address/widgets/saved_addresses.dart';
import 'package:amar_shohor/Screens/Payment/payment_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  Color selectbuttonColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'My Payment',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 15.sp),
        ),
        leading: GestureDetector(
          onTap: () {
            // Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xff196E55),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 5.w, right: 5.w),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: Text(
                    'Delivery Address',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectbuttonColor = Color(0xff196E55);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentOptions()),
                      );
                    });
                  },
                  child: SavedAddress(selectbuttonColor: selectbuttonColor),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          //Remove Function here
                        },
                        child: Container(
                          height: 5.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              'Remove',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //Remove Function here
                        },
                        child: Container(
                          height: 5.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            color: Color(0xff196E55),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              '+ Add Address',
                              style: TextStyle(
                                  fontSize: 10.sp, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
