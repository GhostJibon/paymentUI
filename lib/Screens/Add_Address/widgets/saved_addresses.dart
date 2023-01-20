import 'package:amar_shohor/Screens/Edit_Address/editAdress.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SavedAddress extends StatelessWidget {
  const SavedAddress({
    Key? key,
    required this.selectbuttonColor,
  }) : super(key: key);

  final Color selectbuttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
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
        padding: EdgeInsets.only(top: 1.h, bottom: 1.h, left: 5.w, right: 5.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 5.5.sp,
              backgroundColor: Color(0xff196E55),
              child: Center(
                child: CircleAvatar(
                  radius: 5.sp,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: CircleAvatar(
                      radius: 4.sp,
                      backgroundColor: selectbuttonColor,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 9.h,
              width: 50.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 2.h,
                    width: 18.w,
                    decoration: BoxDecoration(
                        color: Color(0xff196E55),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 0.5.w, right: 0.5.w),
                      child: Row(
                        children: [
                          Icon(
                            Icons.home_filled,
                            size: 8.sp,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 1.w),
                            child: Text(
                              'Daily Needs',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 7.sp),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0.5.h, bottom: 0.5.h),
                    child: Text(
                      'Alexder Michael',
                      style: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    '20/19 Mirpur 1 No. 690',
                    style: TextStyle(fontSize: 8.sp, color: Colors.grey[400]),
                  ),
                  Text(
                    '445434 Yogya Central Java',
                    style: TextStyle(fontSize: 8.sp, color: Colors.grey[400]),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditAddress()),
                );
              },
              child: Container(
                height: 4.h,
                child: Row(
                  children: [
                    Icon(
                      Icons.edit_calendar,
                      size: 12.sp,
                      color: Color(0xffFF6300),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0.5.w),
                      child: Text(
                        'Edit',
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Color(0xffFF6300),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
