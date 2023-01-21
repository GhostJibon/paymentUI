import 'package:amar_shohor/Screens/AddCard/addcard.dart';
import 'package:amar_shohor/Screens/Payment/widgets/creditcardinfotext.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PO_MaserCard extends StatelessWidget {
  const PO_MaserCard({
    Key? key,
    required this.isVisibleMaser,
  }) : super(key: key);

  final bool isVisibleMaser;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisibleMaser,
      child: Container(
          height: 40.h,
          width: 90.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 23.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 140, 0),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('asset/creditcard.png'),
                            Text(
                              'Master Card',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 13.sp),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.h, bottom: 3.h),
                          child: CreditCardInfoText(
                              cardinfo: '1234 - 4567 - 7890 - 1234'),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                CreditCardInfoText(
                                    cardinfo: 'Card Holder Name'),
                                Padding(
                                  padding: EdgeInsets.only(top: 1.h),
                                  child: CreditCardInfoText(
                                      cardinfo: 'Alexander Michael'),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CreditCardInfoText(cardinfo: 'Expires On'),
                                Padding(
                                  padding: EdgeInsets.only(top: 1.h),
                                  child:
                                      CreditCardInfoText(cardinfo: '12/2025'),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CreditCardInfoText(cardinfo: 'CVV'),
                                Padding(
                                  padding: EdgeInsets.only(top: 1.h),
                                  child: CreditCardInfoText(cardinfo: '766'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, right: 10.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  size: 20.sp,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 1.w),
                                  child: Text(
                                    'View',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.edit,
                                  size: 20.sp,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 1.w),
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.remove_from_queue_outlined,
                                  size: 20.sp,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 1.w),
                                  child: Text(
                                    'Delete',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.5.h),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AddCreditCard()),
                            );
                          },
                          child: Container(
                            width: 80.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xffF4F4F4),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            child: Container(
                              width: 27.w,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 20.sp,
                                  ),
                                  Text(
                                    'Add Card',
                                    style: TextStyle(fontSize: 14.sp),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
